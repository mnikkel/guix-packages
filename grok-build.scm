(define-module (grok-build)
  #:use-module (guix build-system trivial)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix licenses)
  #:use-module (guix packages)
  #:use-module (gnu packages bash))

(define-public grok-build
  (package
    (name "grok-build")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (string-append "https://x.ai/cli/grok-" version
                           "-linux-x86_64"))
       (file-name (string-append name "-" version "-linux-x86_64"))
       (sha256
        (base32
         "0gkwzkjs94hbfpfcirf7hpk58lxrpanlv0xnfhiswgc4lmkwknr8"))))
    (build-system trivial-build-system)
    (arguments
     (list
      #:modules '((guix build utils))
      #:builder
      #~(begin
          (use-modules (guix build utils))
          (let* ((out #$output)
                 (program (string-append out "/libexec/grok"))
                 (wrapper (string-append out "/bin/grok")))
            (mkdir-p (dirname program))
            (copy-file #$source program)
            (chmod program #o555)
            (mkdir-p (dirname wrapper))
            (call-with-output-file wrapper
              (lambda (port)
                (format port
                        (string-append "#!~a~%"
                                       "export GROK_AUTO_UPDATE=false~%"
                                       "exec -a \"${0##*/}\" ~a \"$@\"~%")
                        #$(file-append bash-minimal "/bin/bash")
                        program)))
            (chmod wrapper #o555)
            (symlink "grok" (string-append out "/bin/agent"))))))
    (inputs (list bash-minimal))
    (supported-systems '("x86_64-linux"))
    (home-page "https://x.ai/cli")
    (synopsis "AI coding agent for the terminal")
    (description
     "Grok Build is an AI coding agent for the terminal.  This package uses the
official x86_64 Linux release binary.")
    (license asl2.0)))
