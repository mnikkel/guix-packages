(define-module (python-legendary-gl)
  #:use-module (guix licenses)
  #:use-module (guix packages)
  #:use-module (guix build-system pyproject)
  #:use-module (guix download)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-crypto)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python-web))

(define-public python-legendary-gl
  (package
   (name "python-legendary-gl")
   (version "0.21.0")
   (source
    (origin
     (method url-fetch)
     ;; PyPI publishes this project's source distribution with an underscore.
     (uri (string-append
           "https://files.pythonhosted.org/packages/source/l/legendary-gl/"
           "legendary_gl-" version ".tar.gz"))
     (sha256
      (base32
       "08km3fcwdc7pch8hyij05paj016as68ab1b87qjskla6n7f0ryc8"))))
   (build-system pyproject-build-system)
   (arguments
    (list
     ;; Upstream uses uv_build, which is not packaged in Guix.
     #:build-backend "setuptools.build_meta"
     #:tests? #f))
   (native-inputs (list python-setuptools))
   (propagated-inputs
    (list python-filelock python-pycryptodomex python-requests))
   (home-page "https://github.com/legendary-gl/legendary")
   (synopsis
    "Free and open-source replacement for the Epic Games Launcher application")
   (description
    "Free and open-source replacement for the Epic Games Launcher application.")
   (license gpl3)))
