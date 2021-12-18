(define-module (rust-glassbench)
  #:use-module (guix build-system cargo)
  #:use-module (guix download)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module ((guix licenses) #:prefix license:))

(define rust-svg-0.8
  (package
    (name "rust-svg")
    (version "0.8.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "svg" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0b848rnm3mqr0c79zs15gqami9pp4m06yhhrjcimcrixb6j2bnrv"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/bodoni/svg")
    (synopsis "The package provides an SVG composer and parser.")
    (description "The package provides an SVG composer and parser.")
    (license (list license:asl2.0 license:expat))))

(define rust-cli-log-0.1
  (package
    (name "rust-cli-log")
    (version "0.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cli-log" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1kz6ilkymjn4bvsjrryfsykr3bwj1i0rjd4q7qmqjx90k7r76xpl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-chrono" ,rust-chrono-0.4) ("rust-log" ,rust-log-0.4))))
    (home-page "https://github.com/Canop/cli-log")
    (synopsis
      "a simple logging and timing facility configured with an env variable")
    (description
      "a simple logging and timing facility configured with an env variable")
    (license license:expat)))

(define rust-csv2svg-0.1
  (package
    (name "rust-csv2svg")
    (version "0.1.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "csv2svg" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "01yg7alb5kpnha2niayxw2s1g3jg3f19pha70ibw7vd7a6dn3qm8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-anyhow" ,rust-anyhow-1)
         ("rust-argh" ,rust-argh-0.1)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-cli-log" ,rust-cli-log-0.1)
         ("rust-crossterm" ,rust-crossterm-0.19)
         ("rust-csv" ,rust-csv-1)
         ("rust-directories-next" ,rust-directories-next-2)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-open" ,rust-open-1)
         ("rust-svg" ,rust-svg-0.8)
         ("rust-tempfile" ,rust-tempfile-3))))
    (home-page "https://github.com/Canop/csv2svg")
    (synopsis "take a csv as input and outputs svg")
    (description "take a csv as input and outputs svg")
    (license license:expat)))

(define rust-termimad-0.10
  (package
    (name "rust-termimad")
    (version "0.10.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "termimad" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "11fpbq6fsbl8ghy7ip2jz7lwi79zmnrba2cnawmm7y26xqmwc30s"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-crossbeam" ,rust-crossbeam-0.8)
         ("rust-crossterm" ,rust-crossterm-0.19)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-minimad" ,rust-minimad-0.7)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-unicode-width" ,rust-unicode-width-0.1))))
    (home-page "https://github.com/Canop/termimad")
    (synopsis "Markdown Renderer for the Terminal")
    (description "Markdown Renderer for the Terminal")
    (license license:expat)))

(define rust-minimad-0.7
  (package
    (name "rust-minimad")
    (version "0.7.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "minimad" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04xyphcr9iv4ilrscqwai8rwr5ipm4nzwbijjpp580dbav8ns5y6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-lazy-static" ,rust-lazy-static-1))))
    (home-page "https://github.com/Canop/minimad")
    (synopsis "light Markdown parser")
    (description "light Markdown parser")
    (license license:expat)))


(define-public rust-glassbench-0.3
  (package
   (name "rust-glassbench")
   (version "0.3.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "glassbench" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1a9759gyq978k9ry90icx9hsfc02mfijlzw85g9pddv51a6jy8qq"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build?
      #t
      #:cargo-inputs
      (("rust-base64" ,rust-base64-0.13)
       ("rust-chrono" ,rust-chrono-0.4)
       ("rust-crossterm" ,rust-crossterm-0.19)
       ("rust-csv2svg" ,rust-csv2svg-0.1)
       ("rust-git2" ,rust-git2-0.13)
       ("rust-lazy-static" ,rust-lazy-static-1)
       ("rust-minimad" ,rust-minimad-0.7)
       ("rust-open" ,rust-open-1)
       ("rust-rusqlite" ,rust-rusqlite-0.24)
       ("rust-serde" ,rust-serde-1)
       ("rust-serde-json" ,rust-serde-json-1)
       ("rust-svg" ,rust-svg-0.8)
       ("rust-tempfile" ,rust-tempfile-3)
       ("rust-termimad" ,rust-termimad-0.10)
       ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Canop/glassbench")
   (synopsis "rust benchmark with memory")
   (description "rust benchmark with memory")
   (license license:expat)))
