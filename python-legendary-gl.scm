(define-module (python-legendary-gl)
  #:use-module (guix licenses)
  #:use-module (guix packages)
  #:use-module (guix build-system python)
  #:use-module (guix download)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages wine)
  #:use-module (gnu packages python-web))

(define-public python-legendary-gl
  (package
   (name "python-legendary-gl")
   (version "0.20.33")
   (source
    (origin
     (method url-fetch)
     (uri (pypi-uri "legendary-gl" version))
     (sha256
      (base32
       "0c0ym139pn5yc80hc0ynx2am7qxlz0s1w3dgk2zqn7wjf8wc1lm4"))))
   (build-system python-build-system)
   (arguments
    `(#:tests? #f))
   (propagated-inputs (list python-filelock python-requests python-setuptools
                            python-wheel))
   (home-page "https://github.com/derrod/legendary")
   (synopsis
    "Free and open-source replacement for the Epic Games Launcher application")
   (description
    "Free and open-source replacement for the Epic Games Launcher application")
   (license gpl3)))
