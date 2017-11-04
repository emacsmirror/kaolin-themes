;;; kaolin-light-theme.el --- Light Kaolin theme variant
;;; Commentary:

;;; Code:
(require 'kaolin-themes)

(define-kaolin-theme light  "Light Kaolin theme variant."
  ;; Palette modification
  (
   ;; TODO: lime color
   (blue         "#5c9499")
   ;; (pink        "#ca4b7f")
   (dark-blue     "#445588")
   (pink         "#d45589")
   (dark-jade    "#3e594e")
   (pure-orange  "#d1832e")
   (faded-orange "#c78e6d")

   ;; Color vars
   ;; grayish green
   ;; A bit more bright; see screenshots on github
   (bg1 "#ccd0c8")
   (bg2 "#c2c7bd")
   (bg3 "#b8beb3")
   (bg4 "#afb5a8")
   ;; grayish blue
   ;; (bg1 "#c8ccd0")
   ;; origin
   ;; (bg1 white1)
   ;; (bg2 white2)
   ;; (bg3 white3)
   ;; (bg4 white4)
   (fg1 dark-jade)
   (fg2 "#3e574d")
   (fg3 "#476257")
   (fg4 "#4f6e62")
   ;; (green "#3f7d7f")
   (green "#5e8475")


   (keyword     jade)
   (second-key  light-jade)
   (var         lavender)
   (const       faded-blue)
   (builtin     blue)
   ;; TODO:
   (comment     "#9aa88c")
   (alt-comment alt-grayish-blue)
   (functions   builtin)
   (str         moderate-pink)
   (str-alt     dark-violet)
   (doc         str-alt)
   (type        dark-green)
   (num         faded-orange)
   (bool        num)
   (prep        dark-blue)
   (warning     orange)
   (err         red)

   (dim-buffer alt-white)
   ;; TODO: soft blue or wheat or light-orange
   (hl         alt-purple)
   ;; TODO: change bg2 to smth
   (hl-line    (if kaolin-hl-line-colored bg2 white2))
   (hl-indent  light-gray)
   ;; TODO:
   (selection white2)
   ;; TODO:
   (pulse teal)

   (todo moderate-pink)

   (tooltip-bg bg2)
   (tooltip-fg light-gray)
   (tooltip-hl-bg bg3)
   (tooltip-hl-fg hl)

    ;; TODO:
   (rb1 green)
   (rb2 dark-violet)
   (rb3 moderate-blue)
   (rb4 blue)
   (rb5 green)
   (rb6 moderate-pink)
   (rb7 faded-orange)
   (rb8 jade)
   (rb9 lavender)

   (diff-add    light-jade)
   (diff-change faded-orange)
   (diff-rem    faded-red)

    ;; Mode-line
   (line-fg           fg4)
   (line-bg1          bg2)
   (line-bg2          bg3)
   (line-border       bg3)

   ;; Telephone-line
   (segment-active    gray)
   (segment-inactive  gray)
   (evil-normal       green)
   (evil-insert       light-green)
   (evil-visual       orange)
   (evil-replace      red)
   (evil-motion       yellow)
   (evil-operator     evil-normal)
   (evil-emacs        light-yellow)

   (win-border    bg3)
   (line-num-bg   bg1)
   (line-num-fg   grayish-green)
   (line-num-hl   green)

   (cursor        gray)

   (ivy1          bg4)
   (ivy2          alt-blue)
   (ivy3          pure-orange)
   (ivy4          red))

  ((link                   (:foreground soft-blue :underline underline))

   (org-level-1            (:foreground green :bold bold :height 1.1))
   (org-level-2            (:foreground faded-blue :bold nil))
   (org-level-3            (:foreground faded-orange :bold nil))
   (org-level-4            (:foreground faded-wheat :bold nil))
   (org-code               (:foreground green))
   (org-verbatim           (:foreground wheat))
   (org-table              (:foreground moderate-blue :bold bold))
   (company-tooltip-common-selection (:foreground blue))

   (js2-object-property          (:foreground brown)))


  (when kaolin-git-gutter-solid
    (custom-theme-set-faces
     'kaolin-light
     `(git-gutter:added     ((t (:background ,diff-add :foreground ,diff-add))))
     `(git-gutter:modified  ((t (:background ,diff-change :foreground ,diff-change))))
     `(git-gutter:deleted   ((t (:background ,diff-rem :foreground ,diff-rem)))))))

;;; kaolin-light-theme.el ends here
