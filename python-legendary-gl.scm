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
   (version "0.20.12")
   (source
    (origin
     (method url-fetch)
     (uri (pypi-uri "legendary-gl" version))
     (sha256
      (base32
       "01pvsyg152vf8glg10hcr2i59adfrxjbhs3lk6ls7lknix39xpxv"))))
   (build-system python-build-system)
   (arguments
    `(#:tests? #f))
   (inputs
    `(("python-requests" ,python-requests)))
   (native-inputs
    `(("python-setuptools" ,python-setuptools)
      ("python-wheel" ,python-wheel)))
   (home-page "https://github.com/derrod/legendary")
   (synopsis
    "Free and open-source replacement for the Epic Games Launcher application")
   (description
    "Free and open-source replacement for the Epic Games Launcher application")
   (license gpl3)))
