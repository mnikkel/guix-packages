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
   (version "0.20.27")
   (source
    (origin
     (method url-fetch)
     (uri (pypi-uri "legendary-gl" version))
     (sha256
      (base32
       "0l5wqskxivvms9r9y6g3apc37l007pq2843nfqdpvdm38lxl8v7c"))))
   (build-system python-build-system)
   (arguments
    `(#:tests? #f))
   (propagated-inputs (list
		       python-requests
		       python-setuptools
		       python-wheel))
   (home-page "https://github.com/derrod/legendary")
   (synopsis
    "Free and open-source replacement for the Epic Games Launcher application")
   (description
    "Free and open-source replacement for the Epic Games Launcher application")
   (license gpl3)))
