(define-module (opencode)
  #:use-module (guix build-system copy)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix licenses)
  #:use-module (guix packages)
  #:use-module (gnu packages base)
  #:use-module (gnu packages bash)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages rust-apps))

(define-public opencode
  (package
    (name "opencode")
    (version "1.18.21")
    (source
     (origin
       (method url-fetch)
       (uri (string-append
             "https://github.com/anomalyco/opencode/releases/download/v"
             version "/opencode-linux-x64.tar.gz"))
       (file-name (string-append name "-" version "-linux-x64.tar.gz"))
       (sha256
        (base32
         "12mkjnljc15bk4qhwivb79ymphhwshald418lf8mgfqkfvnw646r"))))
    (build-system copy-build-system)
    (arguments
     (list
      ;; Upstream x86_64 binary: do not strip or patchelf it (it crashes).
      ;; The wrapper invokes the Guix glibc loader instead.
      #:tests? #f
      #:strip-binaries? #f
      #:validate-runpath? #f
      #:install-plan #~`(("opencode" "libexec/opencode"))
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'install 'install-wrapper
            (lambda* (#:key inputs #:allow-other-keys)
              (let ((program (string-append #$output "/libexec/opencode"))
                    (wrapper (string-append #$output "/bin/opencode")))
                (chmod program #o555)
                (mkdir-p (dirname wrapper))
                (call-with-output-file wrapper
                  (lambda (port)
                    (format port "#!~a~%"
                            (search-input-file inputs "/bin/bash"))
                    (format port "export OPENCODE_DISABLE_AUTOUPDATE=true~%")
                    (format port "export PATH=~a${PATH:+:$PATH}~%"
                            #$(file-append ripgrep "/bin"))
                    (format port "exec -a opencode ~a --library-path ~a:~a ~a \"$@\"~%"
                            (search-input-file inputs
                                              "/lib/ld-linux-x86-64.so.2")
                            #$(file-append glibc "/lib")
                            (string-append (ungexp gcc "lib") "/lib")
                            program)))
                (chmod wrapper #o555))))
          (add-after 'install-wrapper 'install-completions
            (lambda _
              (let ((wrapper (string-append #$output "/bin/opencode"))
                    (home (string-append (getcwd) "/completion-home")))
                (mkdir-p (string-append home "/tmp"))
                (setenv "HOME" home)
                (setenv "TMPDIR" (string-append home "/tmp"))
                (setenv "XDG_CACHE_HOME" (string-append home "/cache"))
                (setenv "XDG_CONFIG_HOME" (string-append home "/config"))
                (setenv "XDG_DATA_HOME" (string-append home "/data"))
                (setenv "OPENCODE_DISABLE_AUTOUPDATE" "true")
                (chdir home)
                (for-each
                 (lambda (spec)
                   (let ((file (string-append #$output (cdr spec))))
                     (mkdir-p (dirname file))
                     (setenv "SHELL" (car spec))
                     (with-output-to-file file
                       (lambda ()
                         (invoke wrapper "completion")))))
                 '(("/bin/bash" . "/share/bash-completion/completions/opencode")
                   ("/bin/zsh"  . "/share/zsh/site-functions/_opencode")))))))))
    (inputs
     `(("bash-minimal" ,bash-minimal)
       ("gcc:lib" ,gcc "lib")
       ("glibc" ,glibc)
       ("ripgrep" ,ripgrep)))
    (supported-systems '("x86_64-linux"))
    (home-page "https://opencode.ai/")
    (synopsis "AI coding agent for the terminal")
    (description
     "OpenCode is an AI-powered development tool for the terminal.  This package
uses the upstream x86_64 Linux release binary.")
    (license expat)))
