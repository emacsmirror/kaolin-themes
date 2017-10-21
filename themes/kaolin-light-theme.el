;;; kaolin-eclipse-theme.el --- Dark purple Kaolin theme variant
;;; Commentary:

;;; Code:
(require 'kaolin-theme)

(define-kaolin-theme light  "Light Kaolin theme variant."
  ;; Palette modification
  ((light-mvc "black")
   (extra-vars  "white"))
  ;;  (hl-line "dim gray"))

  ;; Set theme faces
  (
   (default (:background "white" :foreground bg3))
   (hl-line (:background "dim gray" :foreground bg3))))


;;; kaolin-eclipse-theme.el ends here
