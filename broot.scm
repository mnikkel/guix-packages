(define-module (broot)
  #:use-module (broot-crates)
  #:use-module (guix build-system cargo)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages version-control))

(define-public broot
  (package
    (name "broot")
    (version "1.58.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "broot" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32
         "16pcy3frwgf6w6r0bqqmmv32avdzb4wm967b1l6jilax327n7xjm"))))
    (build-system cargo-build-system)
    (arguments
     (list
      #:install-source? #f
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'install 'install-manual
            (lambda _
              (install-file "man/page"
                            (string-append #$output "/share/man/man1"))
              (rename-file (string-append #$output "/share/man/man1/page")
                           (string-append #$output
                                          "/share/man/man1/broot.1")))))))
    (native-inputs (list pkg-config))
    (inputs
     (cons* libgit2-1.9 zlib
            (cargo-inputs 'broot #:module '(broot-crates))))
    (home-page "https://dystroy.org/broot")
    (synopsis "Interactive directory tree navigator and launcher")
    (description
     "Broot is an interactive command-line directory navigator.  It shows a
compact tree view of a directory, supports fuzzy search, and can launch
commands on selected files or directories.")
    (license license:expat)))
