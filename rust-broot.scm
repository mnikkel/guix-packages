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
    (version "0.1.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "argh_shared" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "006aa509w15dyhbkr5bxicbfkfz61q9i57ybcb8ibx5qkh0ynqca"))))
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
    (version "0.1.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "argh_derive" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0g4d7fcbz963r9rzdv9p28n41b52rfq38i1m5r2fjlak6x19r530"))))
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
    (version "0.1.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "argh" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0gij9511j75wkvilhw2nq8d81an6c9pbnwlyilkwa5xw96jifwrf"))))
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
    (version "0.11.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "termimad" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "16y0n9kfbzvbq1abmnjfksb4gklzyv9q6w4y1h1jmkl4269djwrd"))))
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
    (version "1.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "secular" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1davw8k29sycm7f4674d4m44jfa7pn812jm3m3mm76srvz63xp63"))))
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
    (version "0.3.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lfs-core" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "07l0cd85l70fkf1009lqa7129329g22i32sq8xzvnp4sr6zmj5xz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-lazy-regex" ,rust-lazy-regex-2)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Canop/lfs-core")
    (synopsis "give information on mounted disks")
    (description "give information on mounted disks")
    (license license:expat)))

(define-public rust-lazy-regex-proc-macros-2
  (package
    (name "rust-lazy-regex-proc-macros")
    (version "2.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lazy-regex-proc_macros" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0kpqhhs2p9zn2q4cfjz30vkwgl4znwapwlj057i5pkwj3f5r64kc"))))
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
    (version "2.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lazy-regex" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0m2anc6knp9dndkyqqf7bd7dly7p3is5vgf0ln4fgxkj2bwril8p"))))
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

(define-public rust-is-executable-0.1
  (package
    (name "rust-is-executable")
    (version "0.1.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "is_executable" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0xy516afjh79a0d53j9v4w5mgi2s0r6f6qynnyz8g0dwi8xmab9h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-winapi" ,rust-winapi-0.3))))
    (home-page
      "https://github.com/fitzgen/is_executable")
    (synopsis
      "Is there an executable file at the given path?")
    (description
      "Is there an executable file at the given path?")
    (license (list license:asl2.0 license:expat))))

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

(define-public rust-strum-macros-0.21
  (package
    (name "rust-strum-macros")
    (version "0.21.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "strum_macros" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1v55b1in7dn07s6vxr8dajqpvxkxjbfq6qamnjgcbnq9x3pawsnh"))))
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

(define-public rust-strum-0.21
  (package
    (name "rust-strum")
    (version "0.21.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "strum" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1qnd2by1zrwgx7li0hmwy7jbzjwz1ky697qjg85nga8zzny6py5a"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-strum-macros" ,rust-strum-macros-0.21))))
    (home-page
      "https://github.com/Peternator7/strum")
    (synopsis
      "Helpful macros for working with enums and strings")
    (description
      "Helpful macros for working with enums and strings")
    (license license:expat)))

(define-public rust-target-lexicon-0.12
  (package
    (name "rust-target-lexicon")
    (version "0.12.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "target-lexicon" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1yx646j9nj4hjhza6lvbj192g7idbxn9zdr2xplha40jqjj2srdh"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/bytecodealliance/target-lexicon")
    (synopsis
      "Targeting utilities for compilers and related tools")
    (description
      "Targeting utilities for compilers and related tools")
    (license license:asl2.0 )))

(define-public rust-cfg-expr-0.8
  (package
    (name "rust-cfg-expr")
    (version "0.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cfg-expr" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "152z106dfranvqalpd51apc9rv7zkd5g0pdbr925vpdvcqkx38bh"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-smallvec" ,rust-smallvec-1)
         ("rust-target-lexicon" ,rust-target-lexicon-0.12))))
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
    (version "3.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "system-deps" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "19ig3hxgyq9d7qy8cwpl74l75ay2w0y0a4rginqb68h7hygjc328"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-anyhow" ,rust-anyhow-1)
         ("rust-cfg-expr" ,rust-cfg-expr-0.8)
         ("rust-heck" ,rust-heck-0.3)
         ("rust-itertools" ,rust-itertools-0.10)
         ("rust-pkg-config" ,rust-pkg-config-0.3)
         ("rust-strum" ,rust-strum-0.21)
         ("rust-strum-macros" ,rust-strum-macros-0.21)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-toml" ,rust-toml-0.5)
         ("rust-version-compare" ,rust-version-compare-0.0))))
    (home-page
      "https://github.com/gdesmott/system-deps")
    (synopsis
      "Discover and configure system dependencies from declarative dependencies in Cargo.toml")
    (description
      "Discover and configure system dependencies from declarative dependencies in Cargo.toml")
    (license (list license:expat license:asl2.0))))

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

(define-public rust-deser-hjson-1
  (package
    (name "rust-deser-hjson")
    (version "1.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "deser-hjson" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "15p8y312kkll1jl17hyfjp8ww8cp1vilr0anrh8bn4azzgj76adz"))))
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

(define-public rust-broot-1
  (package
    (name "rust-broot")
    (version "1.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "broot" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "19g9r1d3csff9qwhz7dqwc3r5rnnacaiycilzp83iv8n00sf0yx5"))))
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
         ("rust-deser-hjson" ,rust-deser-hjson-1)
         ("rust-directories" ,rust-directories-3)
         ("rust-file-size" ,rust-file-size-1)
         ("rust-fnv" ,rust-fnv-1)
         ("rust-git2" ,rust-git2-0.13)
         ("rust-glob" ,rust-glob-0.3)
         ("rust-id-arena" ,rust-id-arena-2)
         ("rust-image" ,rust-image-0.23)
         ("rust-is-executable" ,rust-is-executable-0.1)
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

