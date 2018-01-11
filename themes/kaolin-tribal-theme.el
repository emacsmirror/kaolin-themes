;;; kaolin-tribal-theme.el --- theme based on Tribal color scheme by Dayle Rees
;;; Commentary:

;;; Code:
(require 'kaolin-themes)

(define-kaolin-theme tribal "theme based on Tribal color scheme by Dayle Rees"
  ;; Palette modification
  ((bg1  "#19191d" black1)
   ;; (bg2  "#291c29")
   ;; (bg4  "#473147")
   (bg2       "#222228" black2)
   (bg3       "#2b2b32" black3)
   (bg4       "#34343d" black4)
   (azure2 "#325074")
   (red4 "#9c3b42")

   ;; violet or violet4 or magenta4, cerise4, crimson4
   (keyword     red4)
   (second-key  "#642628" cerise4)
   (builtin     grayish-blue)
   (functions   builtin)
   ;; TODO:
   (var         capri4)
   (const       capri4)
   (type        fg1)
   (num         violet4)
   (bool        num)
   (prep        azure4 "#5f87af")

   ;; TODO:
   (comment     bg4)
   (alt-comment "#4c344c")
   (str         cyan1)
   (str-alt     magenta2)
   (doc         str-alt)
   (warning     orange3)
   (err         red1)

   (dim-buffer "#140E14")
   ;; TODO: or soft/crimson3
   (hl         azure3)
   (hl-line    (if kaolin-hl-line-colored bg2 black1))
   (hl-indent  bg4)
   (selection  bg4)
   (pulse      azure2)

   (todo pink)
   (done spring-green1)

   (tooltip-bg    bg2)
   (tooltip-fg    gray9)
   ;; TODO:
   (tooltip-hl-bg bg4)
   (tooltip-hl-fg violet3)

   (ivy2 spring-green2)
   (ivy3 vermilion4)
   (ivy4 capri1)

   (rb1 crimson4)
   (rb2 violet4)
   (rb3 brown3)
   (rb4 blue4)
   (rb5 brown1)
   (rb6 grayish-blue)
   (rb7 grayish-orange)
   (rb8 magenta4)
   (rb9 red4)

   (diff-add    aquamarine4)
   (diff-change magenta4)
   (diff-rem    red4)

   ;; Mode-line
   (line-fg           fg4)
   (line-bg1          bg2)
   (line-bg2          bg3)
   (line-color2       violet4)
   (line-border       bg3)

   (segment-active    gray2)
   (segment-inactive  gray2)
   (evil-normal       teal1)
   (evil-insert       spring-green1)
   (evil-visual       orange1)
   (evil-replace      red1)
   (evil-motion       yellow1)
   (evil-operator     evil-normal)
   (evil-emacs        amber3)

   (win-border    black3)
   (line-num-bg   bg1)
   (line-num-fg   bg4 black4)
   ;; TOOD: or hl
   (line-num-hl   blue4 gray9)
   (cursor        "#c3c8e0"))

  ;; Custom theme set faces
  (
   (link                (:foreground cyan2 :underline underline))
   (show-paren-mismatch (:background bg2 :foreground red0))

   (org-document-title  (:foreground crimson4 :bold bold))
   (org-document-info   (:foreground crimson4))
   (org-date            (:foreground spring-green3 :underline underline))
   (org-code            (:foreground vermilion4))
   (org-verbatim        (:foreground orange1))
   (org-quote           (:foreground blue4)))

  ;; Set custom vars
  (custom-theme-set-variables
   'kaolin-tribal
   '(kaolin-hl-line-colored t))

  (when kaolin-git-gutter-solid
    (custom-theme-set-faces
     'kaolin-tribal
     `(git-gutter:added     ((t (:background ,diff-add :foreground ,diff-add))))
     `(git-gutter:modified  ((t (:background ,diff-change :foreground ,diff-change))))
     `(git-gutter:deleted   ((t (:background ,diff-rem :foreground ,diff-rem)))))))


;;; kaolin-tribal-theme.el ends here
