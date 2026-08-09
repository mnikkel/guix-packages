(define-module (opencode)
  #:use-module (guix build utils)
  #:use-module (guix build-system gnu)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix licenses)
  #:use-module (guix packages)
  #:use-module (gnu packages base)
  #:use-module (gnu packages bash)
  #:use-module (gnu packages rust-apps))

(define-public opencode
  (package
    (name "opencode")
    (version "1.18.15")
    (source
     (origin
       (method url-fetch)
       (uri (string-append
             "https://github.com/anomalyco/opencode/releases/download/v"
             version "/opencode-linux-x64.tar.gz"))
       (sha256
        (base32
         "071v57q96kvgwm0n1fmjjvdn96q0541nzp5ph6j75ii2qvlf0hnq"))))
    (build-system gnu-build-system)
    (arguments
     (list
      #:tests? #f
      #:strip-binaries? #f
      #:validate-runpath? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'configure)
          (delete 'build)
          (replace 'install
            (lambda* (#:key inputs #:allow-other-keys)
              (let* ((out #$output)
                     (program (string-append out "/libexec/opencode"))
                     (wrapper (string-append out "/bin/opencode")))
                (install-file "opencode" (dirname program))
                (mkdir-p (dirname wrapper))
                (call-with-output-file wrapper
                  (lambda (port)
                    (format port
                            (string-append "#!~a~%"
                                           "export OPENCODE_DISABLE_AUTOUPDATE=true~%"
                                           "export PATH=~a${PATH:+:$PATH}~%"
                                           "exec ~a --library-path ~a ~a \"$@\"~%")
                            (search-input-file inputs "/bin/bash")
                            #$(file-append ripgrep "/bin")
                            (search-input-file inputs "/lib/ld-linux-x86-64.so.2")
                            #$(file-append glibc "/lib")
                            program)))
                (chmod wrapper #o555)))))))
    (inputs (list bash-minimal glibc ripgrep))
    (supported-systems '("x86_64-linux"))
    (home-page "https://opencode.ai/")
    (synopsis "AI coding agent for the terminal")
    (description
     "OpenCode is an AI-powered development tool for the terminal.  This package
uses the upstream x86_64 Linux release binary.")
    (license expat)))
