(define-module (rust-broot)
  #:use-module (guix build-system cargo)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (gnu packages)
  #:use-module (gnu packages cmake)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages crates-graphics)
  #:use-module (gnu packages crates-gtk)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages crypto)
  #:use-module (gnu packages curl)
  #:use-module (gnu packages databases)
  #:use-module (gnu packages fontutils)
  #:use-module (gnu packages gettext)
  #:use-module (gnu packages jemalloc)
  #:use-module (gnu packages llvm)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages nettle)
  #:use-module (gnu packages pcre)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages python)
  #:use-module (gnu packages rust-apps)
  #:use-module (gnu packages rust)
  #:use-module (gnu packages serialization)
  #:use-module (gnu packages sqlite)
  #:use-module (gnu packages ssh)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages web)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages xorg))

(define-public rust-termimad-0.10
  (package
    (name "rust-termimad")
    (version "0.10.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "termimad" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "11fpbq6fsbl8ghy7ip2jz7lwi79zmnrba2cnawmm7y26xqmwc30s"))))
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
    (description
      "Markdown Renderer for the Terminal")
    (license license:expat)))

(define-public rust-minimad-0.7
  (package
    (name "rust-minimad")
    (version "0.7.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "minimad" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "04xyphcr9iv4ilrscqwai8rwr5ipm4nzwbijjpp580dbav8ns5y6"))))
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

(define-public rust-svg-0.8
  (package
    (name "rust-svg")
    (version "0.8.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "svg" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0b848rnm3mqr0c79zs15gqami9pp4m06yhhrjcimcrixb6j2bnrv"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/bodoni/svg")
    (synopsis
      "The package provides an SVG composer and parser.")
    (description
      "The package provides an SVG composer and parser.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-cli-log-0.1
  (package
    (name "rust-cli-log")
    (version "0.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cli-log" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1kz6ilkymjn4bvsjrryfsykr3bwj1i0rjd4q7qmqjx90k7r76xpl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-chrono" ,rust-chrono-0.4)
         ("rust-log" ,rust-log-0.4))))
    (home-page "https://github.com/Canop/cli-log")
    (synopsis
      "a simple logging and timing facility configured with an env variable")
    (description
      "a simple logging and timing facility configured with an env variable")
    (license license:expat)))

(define-public rust-argh-shared-0.1
  (package
    (name "rust-argh-shared")
    (version "0.1.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "argh_shared" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1cacdyl980sarjfx32v6d57snk76c7dvak3mp7fvlvc2r5n367vq"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/google/argh")
    (synopsis
      "Derive-based argument parsing optimized for code size")
    (description
      "Derive-based argument parsing optimized for code size")
    (license license:bsd-3)))

(define-public rust-argh-derive-0.1
  (package
    (name "rust-argh-derive")
    (version "0.1.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "argh_derive" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0rxhd359d4gpac9524xx8qz13wiq3vilqnn95m0pgm0a2860rsy4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-argh-shared" ,rust-argh-shared-0.1)
         ("rust-heck" ,rust-heck-0.3)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/google/argh")
    (synopsis
      "Derive-based argument parsing optimized for code size")
    (description
      "Derive-based argument parsing optimized for code size")
    (license license:bsd-3)))

(define-public rust-argh-0.1
  (package
    (name "rust-argh")
    (version "0.1.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "argh" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1gi2qp6mfc9gz2sy3w1fq8fpz3d1bvx1gmmiryicgkc7iw42yyci"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-argh-derive" ,rust-argh-derive-0.1)
         ("rust-argh-shared" ,rust-argh-shared-0.1))))
    (home-page "https://github.com/google/argh")
    (synopsis
      "Derive-based argument parser optimized for code size")
    (description
      "Derive-based argument parser optimized for code size")
    (license license:bsd-3)))

(define-public rust-csv2svg-0.1
  (package
    (name "rust-csv2svg")
    (version "0.1.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "csv2svg" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "18rcj44s23rq4px2ab1z3pp9wxxsm2jjzvcb966h12nw7669pcpi"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-anyhow" ,rust-anyhow-1)
         ("rust-argh" ,rust-argh-0.1)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-cli-log" ,rust-cli-log-0.1)
         ("rust-csv" ,rust-csv-1)
         ("rust-directories-next"
          ,rust-directories-next-2)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-open" ,rust-open-1)
         ("rust-svg" ,rust-svg-0.8)
         ("rust-tempfile" ,rust-tempfile-3))))
    (home-page "https://github.com/Canop/csv2svg")
    (synopsis "take a csv as input and outputs svg")
    (description
      "take a csv as input and outputs svg")
    (license license:expat)))

(define-public rust-glassbench-0.3
  (package
    (name "rust-glassbench")
    (version "0.3.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "glassbench" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "07w7pn4vv6js8dmfwkk10r4nqxv4js2fzbwiq57n5w67f49qgx03"))))
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

(define-public rust-termux-clipboard-0.1
  (package
    (name "rust-termux-clipboard")
    (version "0.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "termux-clipboard" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0vz3b2c0ra7x5wg6i56247j8z58wkv3dknznjidk34rjr89zyslz"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/Canop/termux-clipboard")
    (synopsis
      "Access to Android clipboard using Termux API")
    (description
      "Access to Android clipboard using Termux API")
    (license license:expat)))

(define-public rust-terminal-clipboard-0.2
  (package
    (name "rust-terminal-clipboard")
    (version "0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "terminal-clipboard" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0npgsl9h1wqlhvw23dspzw343mbykggq9wznbjavch2s1szvk9hp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-clipboard-win" ,rust-clipboard-win-4)
         ("rust-termux-clipboard"
          ,rust-termux-clipboard-0.1)
         ("rust-x11-clipboard" ,rust-x11-clipboard-0.5))))
    (home-page
      "https://github.com/Canop/terminal-clipboard")
    (synopsis "a minimal cross-platform clipboard")
    (description
      "a minimal cross-platform clipboard")
    (license license:expat)))

(define-public rust-termimad-0.11
  (package
    (name "rust-termimad")
    (version "0.11.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "termimad" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1l4wvy7gl5pp8w1rzz99g29xbsmyl95rhbq5har6mkk4jidzdxga"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-crossbeam" ,rust-crossbeam-0.8)
         ("rust-crossterm" ,rust-crossterm-0.19)
         ("rust-minimad" ,rust-minimad-0.8)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-unicode-width" ,rust-unicode-width-0.1))))
    (home-page "https://github.com/Canop/termimad")
    (synopsis "Markdown Renderer for the Terminal")
    (description
      "Markdown Renderer for the Terminal")
    (license license:expat)))

(define-public rust-strict-0.1
  (package
    (name "rust-strict")
    (version "0.1.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "strict" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1vphysahrh16nj4k3ldw9qqjqjcada7pzj5bfq62nlfhif7za6lr"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/Canop/strict")
    (synopsis
      "NonEmptyVec, a vec guaranteed to hold at least one element")
    (description
      "NonEmptyVec, a vec guaranteed to hold at least one element")
    (license license:expat)))

(define-public rust-splitty-0.1
  (package
    (name "rust-splitty")
    (version "0.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "splitty" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "107ffm63gbpizpc9v0cm8kzm2kgcmhygfdam0af0w26li672k441"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/Canop/splitty")
    (synopsis
      "a string splitter taking quotes into account")
    (description
      "a string splitter taking quotes into account")
    (license license:expat)))

(define-public rust-secular-1
  (package
    (name "rust-secular")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "secular" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "01cr44pzj1zpxajrls702l177irdarn0bp8fz6x399iw896avjd4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-unicode-normalization"
          ,rust-unicode-normalization-0.1))))
    (home-page "")
    (synopsis "No Diacr!")
    (description "No Diacr!")
    (license license:expat)))

(define-public rust-pathdiff-0.2
  (package
    (name "rust-pathdiff")
    (version "0.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pathdiff" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0d2aqgrqhdn5kxlnd5dxv7d6pgsgf92r6r9gqm6bdh0mvsrk0xl7"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/Manishearth/pathdiff")
    (synopsis
      "Library for diffing paths to obtain relative paths")
    (description
      "Library for diffing paths to obtain relative paths")
    (license (list license:expat license:asl2.0))))

(define-public rust-minimad-0.8
  (package
    (name "rust-minimad")
    (version "0.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "minimad" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1v9h8vpajqlwhazmlvcyifk5lzwazs4v2kfgkdllwamqxi0g4mw9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-once-cell" ,rust-once-cell-1))))
    (home-page "https://github.com/Canop/minimad")
    (synopsis "light Markdown parser")
    (description "light Markdown parser")
    (license license:expat)))

(define-public rust-lfs-core-0.3
  (package
    (name "rust-lfs-core")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lfs-core" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1ajwr63n8yg8p9qbsw8yvymgllihg3rqqdhrvlkl62mg57888kpp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-libc" ,rust-libc-0.2)
         ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Canop/lfs-core")
    (synopsis "give information on mounted disks")
    (description "give information on mounted disks")
    (license license:expat)))

(define-public rust-once-cell-1
  (package
    (name "rust-once-cell")
    (version "1.7.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "once_cell" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "18qmpyfigg4ibdhjy5mwcjhzk9adwlgfaqv7nj430ivm86q0i2xg"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-parking-lot" ,rust-parking-lot-0.11))))
    (home-page
      "https://github.com/matklad/once_cell")
    (synopsis
      "Single assignment cells and lazy values.")
    (description
      "Single assignment cells and lazy values.")
    (license (list license:expat license:asl2.0))))

(define-public rust-regex-syntax-0.6
  (package
    (name "rust-regex-syntax")
    (version "0.6.25")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "regex-syntax" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "16y87hz1bxmmz6kk360cxwfm3jnbsxb3x4zw9x1gzz7khic2i5zl"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/rust-lang/regex")
    (synopsis "A regular expression parser.")
    (description
      "This package provides a regular expression parser.")
    (license (list license:expat license:asl2.0))))

(define-public rust-memchr-2
  (package
    (name "rust-memchr")
    (version "2.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "memchr" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1p478fqf4nia2ma0kv4npb8x1hli0zz6k16517ikb51jkryx8sxi"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-libc" ,rust-libc-0.2))))
    (home-page
      "https://github.com/BurntSushi/rust-memchr")
    (synopsis "Safe interface to memchr.")
    (description "Safe interface to memchr.")
    (license (list license:unlicense license:expat))))

(define-public rust-aho-corasick-0.7
  (package
    (name "rust-aho-corasick")
    (version "0.7.18")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "aho-corasick" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0vv50b3nvkhyy7x7ip19qnsq11bqlnffkmj2yx2xlyk5wzawydqy"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-memchr" ,rust-memchr-2))))
    (home-page
      "https://github.com/BurntSushi/aho-corasick")
    (synopsis "Fast multiple substring searching.")
    (description
      "Fast multiple substring searching.")
    (license (list license:unlicense license:expat))))

(define-public rust-regex-1
  (package
    (name "rust-regex")
    (version "1.5.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "regex" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0qf479kjbmb582h4d1d6gfl75h0j8aq2nrdi5wg6zdcy6llqcynh"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-aho-corasick" ,rust-aho-corasick-0.7)
         ("rust-memchr" ,rust-memchr-2)
         ("rust-regex-syntax" ,rust-regex-syntax-0.6))))
    (home-page "https://github.com/rust-lang/regex")
    (synopsis
      "An implementation of regular expressions for Rust. This implementation uses
finite automata and guarantees linear time matching on all inputs.
")
    (description
      "An implementation of regular expressions for Rust.  This implementation uses
finite automata and guarantees linear time matching on all inputs.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-lazy-regex-proc-macros-2
  (package
    (name "rust-lazy-regex-proc-macros")
    (version "2.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lazy-regex-proc_macros" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "13ac6vz5rq1pfg1jv2hbp1qviw7ax3rzshi3w47nyad1pqdk4vyd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-regex" ,rust-regex-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "")
    (synopsis "proc macros for the lazy_regex crate")
    (description
      "proc macros for the lazy_regex crate")
    (license license:expat)))

(define-public rust-lazy-regex-2
  (package
    (name "rust-lazy-regex")
    (version "2.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lazy-regex" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "07n4zz4fwlf8821mrncngax5s7z1pxwp0z4ly3wfsyywv3jg603v"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-lazy-regex-proc-macros"
          ,rust-lazy-regex-proc-macros-2)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-regex" ,rust-regex-1))))
    (home-page "https://github.com/Canop/lazy-regex")
    (synopsis
      "lazy static regular expressions checked at compile time")
    (description
      "lazy static regular expressions checked at compile time")
    (license license:expat)))

(define-public rust-fallible-collections-0.3
  (package
    (name "rust-fallible-collections")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fallible_collections" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1shgcljh6pliv1b1qk6knk2hzig5ah76hx01f1icpgkiqp6fi6cm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-hashbrown" ,rust-hashbrown-0.9))))
    (home-page
      "https://github.com/vcombey/fallible_collections.git")
    (synopsis
      "a crate which adds fallible allocation api to std collections")
    (description
      "a crate which adds fallible allocation api to std collections")
    (license (list license:expat license:asl2.0))))

(define-public rust-bitreader-0.3
  (package
    (name "rust-bitreader")
    (version "0.3.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bitreader" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "06wlzf8ra7k8ya0m71dq0kxbaalaan48dymairn9q8s4gld1hy4i"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1))))
    (home-page "https://github.com/irauta/bitreader")
    (synopsis
      "BitReader helps reading individual bits from a slice of bytes.

You can read \"unusual\" numbers of bits from the byte slice, for example 13 bits
at once. The reader internally keeps track of position within the buffer.
")
    (description
      "BitReader helps reading individual bits from a slice of bytes.

You can read \"unusual\" numbers of bits from the byte slice, for example 13 bits
at once.  The reader internally keeps track of position within the buffer.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-mp4parse-0.11
  (package
    (name "rust-mp4parse")
    (version "0.11.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "mp4parse" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1wwkkjrf2p9qy58sa5pa9wqlfhd36zcp8h0lgrz9l5pgkr89b6yk"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitreader" ,rust-bitreader-0.3)
         ("rust-byteorder" ,rust-byteorder-1)
         ("rust-env-logger" ,rust-env-logger-0.8)
         ("rust-fallible-collections"
          ,rust-fallible-collections-0.3)
         ("rust-hashbrown" ,rust-hashbrown-0.9)
         ("rust-log" ,rust-log-0.4)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-static-assertions"
          ,rust-static-assertions-1))))
    (home-page
      "https://github.com/mozilla/mp4parse-rust")
    (synopsis
      "Parser for ISO base media file format (mp4)")
    (description
      "Parser for ISO base media file format (mp4)")
    (license license:mpl2.0)))

(define-public rust-jpeg-decoder-0.1
  (package
    (name "rust-jpeg-decoder")
    (version "0.1.22")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "jpeg-decoder" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1wnh0bmmswpgwhgmlizz545x8334nlbmkq8imy9k224ri3am7792"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-rayon" ,rust-rayon-1))))
    (home-page
      "https://github.com/image-rs/jpeg-decoder")
    (synopsis "JPEG decoder")
    (description "JPEG decoder")
    (license (list license:expat license:asl2.0))))

(define-public rust-dcv-color-primitives-0.1
  (package
    (name "rust-dcv-color-primitives")
    (version "0.1.16")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "dcv-color-primitives" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0yrm1qipdmadynhjgz1bvdh42ph9azvwg8v43c8ywr8vlx9qvaq2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2))))
    (home-page
      "https://github.com/aws/dcv-color-primitives")
    (synopsis
      "a library to perform image color model conversion")
    (description
      "a library to perform image color model conversion")
    (license license:expat)))

(define-public rust-strum-macros-0.20
  (package
    (name "rust-strum-macros")
    (version "0.20.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "strum_macros" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0j9ikvxlqzr667ghc045qkpwprjgcfmzgagln7maw4jigawcd2zf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-heck" ,rust-heck-0.3)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page
      "https://github.com/Peternator7/strum")
    (synopsis
      "Helpful macros for working with enums and strings")
    (description
      "Helpful macros for working with enums and strings")
    (license license:expat)))

(define-public rust-strum-0.20
  (package
    (name "rust-strum")
    (version "0.20.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "strum" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0p5cslmdnz261kiwmm4h7qsmv9bh83r0f9lq6f2z2mxsnl4wa63k"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-strum-macros" ,rust-strum-macros-0.20))))
    (home-page
      "https://github.com/Peternator7/strum")
    (synopsis
      "Helpful macros for working with enums and strings")
    (description
      "Helpful macros for working with enums and strings")
    (license license:expat)))

(define-public rust-target-lexicon-0.11
  (package
    (name "rust-target-lexicon")
    (version "0.11.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "target-lexicon" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0khq669rji1l0liv9mdxvddklqhxxpk6r06wbdhc18hiilw9xck2"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/bytecodealliance/target-lexicon")
    (synopsis
      "Targeting utilities for compilers and related tools")
    (description
      "Targeting utilities for compilers and related tools")
    (license license:asl2.0 )))

(define-public rust-cfg-expr-0.7
  (package
    (name "rust-cfg-expr")
    (version "0.7.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cfg-expr" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0sn2mw7s2i9qr5mrbyarz0mn5vb3iv6z656va6sccf5qzcprxaih"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-smallvec" ,rust-smallvec-1)
         ("rust-target-lexicon" ,rust-target-lexicon-0.11))))
    (home-page
      "https://github.com/EmbarkStudios/cfg-expr")
    (synopsis
      "A parser and evaluator for Rust `cfg()` expressions.")
    (description
      "This package provides a parser and evaluator for Rust `cfg()` expressions.")
    (license (list license:expat license:asl2.0))))

(define-public rust-system-deps-3
  (package
    (name "rust-system-deps")
    (version "3.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "system-deps" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0w7avfcqdp6wkix8yhfk4wpbr9z9x7507l54crqc06mwsxx10j62"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-anyhow" ,rust-anyhow-1)
         ("rust-cfg-expr" ,rust-cfg-expr-0.7)
         ("rust-heck" ,rust-heck-0.3)
         ("rust-itertools" ,rust-itertools-0.10)
         ("rust-pkg-config" ,rust-pkg-config-0.3)
         ("rust-strum" ,rust-strum-0.20)
         ("rust-strum-macros" ,rust-strum-macros-0.20)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-toml" ,rust-toml-0.5)
         ("rust-version-compare"
          ,rust-version-compare-0.0))))
    (home-page
      "https://github.com/gdesmott/system-deps")
    (synopsis
      "Discover and configure system dependencies from declarative dependencies in Cargo.toml")
    (description
      "Discover and configure system dependencies from declarative dependencies in Cargo.toml")
    (license (list license:expat license:asl2.0))))

(define-public rust-shlex-1
  (package
    (name "rust-shlex")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "shlex" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0gf773p2snqpw69rzh8s1wdlq8dc8c1ypmiv516il1fdyb46i9a2"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/comex/rust-shlex")
    (synopsis
      "Split a string into shell words, like Python's shlex.
")
    (description
      "Split a string into shell words, like Python's shlex.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-bindgen-0.58
  (package
    (name "rust-bindgen")
    (version "0.58.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bindgen" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "13r505nn28ay0byfd96hdg8xwcpa2r20czjy111pl66p22s2718g"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-cexpr" ,rust-cexpr-0.4)
         ("rust-clang-sys" ,rust-clang-sys-1)
         ("rust-clap" ,rust-clap-2)
         ("rust-env-logger" ,rust-env-logger-0.8)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-lazycell" ,rust-lazycell-1)
         ("rust-log" ,rust-log-0.4)
         ("rust-peeking-take-while"
          ,rust-peeking-take-while-0.1)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-regex" ,rust-regex-1)
         ("rust-rustc-hash" ,rust-rustc-hash-1)
         ("rust-shlex" ,rust-shlex-1)
         ("rust-which" ,rust-which-3))))
    (home-page
      "https://rust-lang.github.io/rust-bindgen/")
    (synopsis
      "Automatically generates Rust FFI bindings to C and C++ libraries.")
    (description
      "Automatically generates Rust FFI bindings to C and C++ libraries.")
    (license license:bsd-3)))

(define-public rust-dav1d-sys-0.3
  (package
    (name "rust-dav1d-sys")
    (version "0.3.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "dav1d-sys" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "020lla2l703iy69gbksq18snj2b1sp7vmjf39qqykd4242d4msr5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bindgen" ,rust-bindgen-0.58)
         ("rust-system-deps" ,rust-system-deps-3))))
    (home-page "https://github.com/rust-av/dav1d-rs")
    (synopsis "FFI bindings to dav1d")
    (description "FFI bindings to dav1d")
    (license license:expat)))

(define-public rust-dav1d-0.6
  (package
    (name "rust-dav1d")
    (version "0.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "dav1d" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0pn6r1a9qfrpg2xwc7ci2iddvnzxb17ddca0bwymgi839cxc2chl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-dav1d-sys" ,rust-dav1d-sys-0.3))))
    (home-page "https://github.com/rust-av/dav1d-rs")
    (synopsis "libdav1d bindings")
    (description "libdav1d bindings")
    (license license:expat)))

(define-public rust-image-0.23
  (package
    (name "rust-image")
    (version "0.23.14")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "image" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "18gn2f7xp30pf9aqka877knlq308khxqiwjvsccvzaa4f9zcpzr4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bytemuck" ,rust-bytemuck-1)
         ("rust-byteorder" ,rust-byteorder-1)
         ("rust-color-quant" ,rust-color-quant-1)
         ("rust-dav1d" ,rust-dav1d-0.6)
         ("rust-dcv-color-primitives"
          ,rust-dcv-color-primitives-0.1)
         ("rust-gif" ,rust-gif-0.11)
         ("rust-jpeg-decoder" ,rust-jpeg-decoder-0.1)
         ("rust-mp4parse" ,rust-mp4parse-0.11)
         ("rust-num-iter" ,rust-num-iter-0.1)
         ("rust-num-rational" ,rust-num-rational-0.3)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-png" ,rust-png-0.16)
         ("rust-ravif" ,rust-ravif-0.6)
         ("rust-rgb" ,rust-rgb-0.8)
         ("rust-scoped-threadpool"
          ,rust-scoped-threadpool-0.1)
         ("rust-tiff" ,rust-tiff-0.6))))
    (home-page "https://github.com/image-rs/image")
    (synopsis
      "Imaging library written in Rust. Provides basic filters and decoders for the most common image formats.")
    (description
      "Imaging library written in Rust.  Provides basic filters and decoders for the most common image formats.")
    (license license:expat)))

(define-public rust-id-arena-2
  (package
    (name "rust-id-arena")
    (version "2.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "id-arena" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "01ch8jhpgnih8sawqs44fqsqpc7bzwgy0xpi6j0f4j0i5mkvr8i5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-rayon" ,rust-rayon-1))))
    (home-page "https://github.com/fitzgen/id-arena")
    (synopsis "A simple, id-based arena.")
    (description
      "This package provides a simple, id-based arena.")
    (license (list license:expat license:asl2.0))))

(define-public rust-fnv-1
  (package
    (name "rust-fnv")
    (version "1.0.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fnv" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1hc2mcqha06aibcaza94vbi81j6pr9a1bbxrxjfhc91zin8yr7iz"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/servo/rust-fnv")
    (synopsis
      "Fowlerâ\x80\x93Nollâ\x80\x93Vo hash function")
    (description
      "Fowlerâ\x80\x93Nollâ\x80\x93Vo hash function")
    (license (list license:asl2.0 license:expat))))

(define-public rust-deser-hjson-0.1
  (package
    (name "rust-deser-hjson")
    (version "0.1.13")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "deser-hjson" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1wp05allbw2nw9swnl6xf1ddg678sslz3gxjns35zr5j64q8yjvl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serde" ,rust-serde-1))))
    (home-page
      "https://github.com/Canop/deser-hjson")
    (synopsis "a Hjson deserializer for Serde")
    (description "a Hjson deserializer for Serde")
    (license license:expat)))

(define-public rust-custom-error-1
  (package
    (name "rust-custom-error")
    (version "1.9.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "custom_error" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "19mwa90z1hgwn3mqj07b4cy6j4yc8c59k2n99mdvm9kz37fm32jg"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/lovasoa/custom_error")
    (synopsis
      "Define custom errors without boilerplate using the custom_error! macro.")
    (description
      "Define custom errors without boilerplate using the custom_error! macro.")
    (license license:bsd-2)))

(define-public rust-proc-status-0.1
  (package
    (name "rust-proc-status")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "proc-status" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "04lp8kdj75m8s1hwxslyzz3fdgbs6zy4zfjhg2s7cysyj6nc1q7h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-thiserror" ,rust-thiserror-1))))
    (home-page
      "https://github.com/Canop/proc-status")
    (synopsis
      "simple access to proc/status info on unix")
    (description
      "simple access to proc/status info on unix")
    (license license:expat)))

(define-public rust-file-size-1
  (package
    (name "rust-file-size")
    (version "1.0.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "file-size" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1cyj7067fs7ml8pjrwzjy3qrns3yxaxakf0na1v5fffk0l0z2i4m"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/Canop/file-size")
    (synopsis
      "a function formatting file sizes in 4 chars")
    (description
      "a function formatting file sizes in 4 chars")
    (license license:expat)))

(define-public rust-cli-log-2
  (package
    (name "rust-cli-log")
    (version "2.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cli-log" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1k559h2am9qk65d72m9p6nzymzqirjp8bh2sya5c4bn8qh6v0aix"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-chrono" ,rust-chrono-0.4)
         ("rust-file-size" ,rust-file-size-1)
         ("rust-log" ,rust-log-0.4)
         ("rust-proc-status" ,rust-proc-status-0.1))))
    (home-page "https://github.com/Canop/cli-log")
    (synopsis
      "a simple logging and timing facility configured with an env variable")
    (description
      "a simple logging and timing facility configured with an env variable")
    (license license:expat)))

(define-public rust-char-reader-0.1
  (package
    (name "rust-char-reader")
    (version "0.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "char_reader" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "01qsxd27jq8xhg0vbsiqdd92lyjdr56wlvgb487vdb97694ngaid"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/Canop/char_reader")
    (synopsis
      "Safely read wild streams as chars or lines")
    (description
      "Safely read wild streams as chars or lines")
    (license license:expat)))

(define-public rust-bet-1
  (package
    (name "rust-bet")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bet" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0w46dpfdhwrr90qvqi3nli46gxfalhic49vxbrchpysqfrc8w89y"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/Canop/bet")
    (synopsis
      "Helps parsing and evaluating binary expression trees")
    (description
      "Helps parsing and evaluating binary expression trees")
    (license license:expat)))

(define-public rust-crunchy-0.2
  (package
    (name "rust-crunchy")
    (version "0.2.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crunchy" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1dx9mypwd5mpfbbajm78xcrg5lirqk7934ik980mmaffg3hdm0bs"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "")
    (synopsis
      "Crunchy unroller: deterministically unroll constant loops")
    (description
      "Crunchy unroller: deterministically unroll constant loops")
    (license license:expat)))

(define-public rust-tiny-keccak-2
  (package
    (name "rust-tiny-keccak")
    (version "2.0.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tiny-keccak" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0dq2x0hjffmixgyf6xv9wgsbcxkd65ld0wrfqmagji8a829kg79c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-crunchy" ,rust-crunchy-0.2))))
    (home-page
      "https://github.com/debris/tiny-keccak")
    (synopsis
      "An implementation of Keccak derived functions.")
    (description
      "An implementation of Keccak derived functions.")
    (license license:cc0)))

(define-public rust-const-random-macro-0.1
  (package
    (name "rust-const-random-macro")
    (version "0.1.13")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "const-random-macro" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0h7vvskw1pw5x44sbl74gsi8ydvrj5kaixpjqzxvz8h0s0knwpv1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-getrandom" ,rust-getrandom-0.2)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-proc-macro-hack"
          ,rust-proc-macro-hack-0.5)
         ("rust-tiny-keccak" ,rust-tiny-keccak-2))))
    (home-page
      "https://github.com/tkaitchuck/constrandom")
    (synopsis
      "Provides the procedural macro used by const-random")
    (description
      "This package provides the procedural macro used by const-random")
    (license (list license:expat license:asl2.0))))

(define-public rust-const-random-0.1
  (package
    (name "rust-const-random")
    (version "0.1.13")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "const-random" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1i3pmhmmcdw3rr1pv1p9yhm4danm5r156cpy7w30pa0s05fxk47m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-const-random-macro"
          ,rust-const-random-macro-0.1)
         ("rust-proc-macro-hack"
          ,rust-proc-macro-hack-0.5))))
    (home-page
      "https://github.com/tkaitchuck/constrandom")
    (synopsis
      "Provides compile time random number generation.")
    (description
      "This package provides compile time random number generation.")
    (license (list license:expat license:asl2.0))))

(define-public rust-ahash-0.7
  (package
    (name "rust-ahash")
    (version "0.7.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ahash" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "163vy6jcd7r3jczsv4zyhlc5x9dqsfgg1yrqbm3xhygr1czq7fs3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-const-random" ,rust-const-random-0.1)
         ("rust-getrandom" ,rust-getrandom-0.2)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-version-check" ,rust-version-check-0.9))))
    (home-page "https://github.com/tkaitchuck/ahash")
    (synopsis
      "A non-cryptographic hash function using AES-NI for high performance")
    (description
      "This package provides a non-cryptographic hash function using AES-NI for high performance")
    (license (list license:expat license:asl2.0))))

(define-public rust-syntect-5
  (package
    (name "rust-syntect")
    (version "4.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "syntect" version))
       (file-name
        (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1r9ij3qmq4cs83jwpk1043sai1dwdghb8lwkm34rs12d7frc5yib"))))
    (build-system cargo-build-system)
    (arguments
     `(#:tests? #f                      ;missing files
       #:rust ,rust-1.46
       #:cargo-inputs
       (("rust-bincode" ,rust-bincode-1)
        ("rust-bitflags" ,rust-bitflags-1)
        ("rust-fancy-regex" ,rust-fancy-regex-0.3)
        ("rust-flate2" ,rust-flate2-1)
        ("rust-fnv" ,rust-fnv-1)
        ("rust-lazy-static" ,rust-lazy-static-1)
        ("rust-lazycell" ,rust-lazycell-1)
        ("rust-onig" ,rust-onig-6)
        ("rust-plist" ,rust-plist-1)
        ("rust-regex-syntax" ,rust-regex-syntax-0.6)
        ("rust-serde" ,rust-serde-1)
        ("rust-serde-derive" ,rust-serde-derive-1)
        ("rust-serde-json" ,rust-serde-json-1)
        ("rust-walkdir" ,rust-walkdir-2)
        ("rust-yaml-rust" ,rust-yaml-rust-0.4))
       #:cargo-development-inputs
       (("rust-criterion" ,rust-criterion-0.3)
        ("rust-getopts" ,rust-getopts-0.2)
        ("rust-pretty-assertions" ,rust-pretty-assertions-0.6))))
    (home-page "https://github.com/trishume/syntect")
    (synopsis "Library for syntax highlighting and code intelligence")
    (description
     "This package provides a library for syntax highlighting and code
intelligence using Sublime Text's grammars.")
    (license license:expat)))

(define-public rust-broot-1
  (package
    (name "rust-broot")
    (version "1.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "broot" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0kz73xzy7knwfxc7yq42s3fx1y7d29dx114ap1bmn0ys640w9vsy"))))
    (build-system cargo-build-system)
    (arguments
     `(#:rust ,rust-1.50
       #:cargo-inputs
        (("rust-ahash" ,rust-ahash-0.7)
         ("rust-ansi-colours" ,rust-ansi-colours-1)
         ("rust-base64" ,rust-base64-0.13)
         ("rust-bet" ,rust-bet-1)
         ("rust-char-reader" ,rust-char-reader-0.1)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-clap" ,rust-clap-2)
         ("rust-clap" ,rust-clap-2)
         ("rust-cli-log" ,rust-cli-log-2)
         ("rust-crossbeam" ,rust-crossbeam-0.8)
         ("rust-crossterm" ,rust-crossterm-0.19)
         ("rust-custom-error" ,rust-custom-error-1)
         ("rust-deser-hjson" ,rust-deser-hjson-0.1)
         ("rust-directories" ,rust-directories-3)
         ("rust-file-size" ,rust-file-size-1)
         ("rust-fnv" ,rust-fnv-1)
         ("rust-git2" ,rust-git2-0.13)
         ("rust-glob" ,rust-glob-0.3)
         ("rust-id-arena" ,rust-id-arena-2)
         ("rust-image" ,rust-image-0.23)
         ("rust-is-executable" ,rust-is-executable)
         ("rust-lazy-regex" ,rust-lazy-regex-2)
         ("rust-lfs-core" ,rust-lfs-core-0.3)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-memmap" ,rust-memmap-0.7)
         ("rust-minimad" ,rust-minimad-0.8)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-open" ,rust-open-1)
         ("rust-pathdiff" ,rust-pathdiff-0.2)
         ("rust-phf" ,rust-phf-0.8)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-regex" ,rust-regex-1)
         ("rust-secular" ,rust-secular-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-smallvec" ,rust-smallvec-1)
         ("rust-splitty" ,rust-splitty-0.1)
         ("rust-strict" ,rust-strict-0.1)
         ("rust-syntect" ,rust-syntect-4)
         ("rust-tempfile" ,rust-tempfile-3)
         ("rust-termimad" ,rust-termimad-0.11)
         ("rust-terminal-clipboard"
          ,rust-terminal-clipboard-0.2)
         ("rust-toml" ,rust-toml-0.5)
         ("rust-umask" ,rust-umask-1)
         ("rust-unicode-width" ,rust-unicode-width-0.1)
         ("rust-users" ,rust-users-0.11))
        #:cargo-development-inputs
        (("rust-glassbench" ,rust-glassbench-0.3))))
    (native-inputs
     `(("zlib" ,zlib)))
    (home-page "https://github.com/Canop/broot")
    (synopsis "A new file manager")
    (description
      "This package provides a new file manager")
    (license license:expat)))

