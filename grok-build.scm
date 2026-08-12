(define-module (grok-build)
  #:use-module (guix build-system copy)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix licenses)
  #:use-module (guix packages)
  #:use-module (gnu packages bash))

(define-public grok-build
  (package
    (name "grok-build")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (string-append "https://x.ai/cli/grok-" version
                           "-linux-x86_64"))
       (file-name (string-append name "-" version "-linux-x86_64"))
       (sha256
        (base32
         "0q89i9k3vyzhg5i9kp28d1yh27j0bn1qn9bj81z0dvgvlgg4cz9a"))))
    (build-system copy-build-system)
    (arguments
     (list
      ;; Official static-pie binary; do not strip or rewrite its ELF headers.
      #:strip-binaries? #f
      #:install-plan
      #~`((#$(string-append name "-" version "-linux-x86_64") "libexec/grok"))
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'install 'install-wrapper
            (lambda* (#:key inputs #:allow-other-keys)
              (let ((program (string-append #$output "/libexec/grok"))
                    (wrapper (string-append #$output "/bin/grok")))
                (chmod program #o555)
                (mkdir-p (dirname wrapper))
                ;; Preserve argv[0] so `grok` and the `agent` symlink stay
                ;; distinct; Guix owns updates via GROK_AUTO_UPDATE.
                (call-with-output-file wrapper
                  (lambda (port)
                    (format port "#!~a~%"
                            (search-input-file inputs "/bin/bash"))
                    (format port "export GROK_AUTO_UPDATE=false~%")
                    (format port "exec -a \"${0##*/}\" ~a \"$@\"~%"
                            program)))
                (chmod wrapper #o555)
                (symlink "grok" (string-append #$output "/bin/agent")))))
          (add-after 'install-wrapper 'install-completions
            (lambda _
              (let ((program (string-append #$output "/libexec/grok")))
                (setenv "HOME" (getcwd))
                (setenv "GROK_AUTO_UPDATE" "false")
                (for-each
                 (lambda (spec)
                   (let ((file (string-append #$output (cdr spec))))
                     (mkdir-p (dirname file))
                     (with-output-to-file file
                       (lambda ()
                         (invoke program "completions" (car spec))))))
                 '(("bash" . "/share/bash-completion/completions/grok")
                   ("zsh"  . "/share/zsh/site-functions/_grok")
                   ("fish" . "/share/fish/vendor_completions.d/grok.fish")))))))))
    (inputs (list bash-minimal))
    (supported-systems '("x86_64-linux"))
    (home-page "https://x.ai/cli")
    (synopsis "AI coding agent for the terminal")
    (description
     "Grok Build is an AI coding agent for the terminal.  This package uses the
official x86_64 Linux release binary.")
    (license asl2.0)))
