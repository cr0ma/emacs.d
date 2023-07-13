(deftheme custom-dark
  "A custom dark theme for Emacs")

(let ((class '((class color) (min-colors 89))))
  (custom-theme-set-faces
   'custom-dark
   `(default ((,class (:foreground "#ffffff" :background "#000000"))))
   `(cursor ((,class (:background "#ffffff"))))
   `(fringe ((,class (:background "#000000"))))
   `(mode-line ((,class (:foreground "#abb2bf" :background "#000000"))))
   `(mode-line-inactive ((,class (:foreground "#5c6370" :background "#282c34"))))
   `(region ((,class (:background "#3e4451"))))
   `(highlight ((,class (:background "#3e4451"))))
   `(secondary-selection ((,class (:background "#565c64"))))
   `(font-lock-builtin-face ((,class (:foreground "#61afef"))))
   `(font-lock-comment-delimiter-face ((,class (:foreground "#5c6370"))))
   `(font-lock-comment-face ((,class (:foreground "#5c6370"))))
   `(font-lock-constant-face ((,class (:foreground "#e5c07b"))))
   `(font-lock-doc-face ((,class (:foreground "#5c6370"))))
   `(font-lock-function-name-face ((,class (:foreground "#c678dd"))))
   `(font-lock-keyword-face ((,class (:foreground "#61afef"))))
   `(font-lock-negation-char-face ((,class (:foreground "#61afef"))))
   `(font-lock-preprocessor-face ((,class (:foreground "#61afef"))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground "#61afef"))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground "#e5c07b"))))
   `(font-lock-string-face ((,class (:foreground "#98c379"))))
   `(font-lock-type-face ((,class (:foreground "#56b6c2"))))
   `(font-lock-variable-name-face ((,class (:foreground "#e5c07b"))))
   `(font-lock-warning-face ((,class (:foreground "#ff6c6b"))))
   `(button ((,class (:foreground "#61afef" :underline t))))
   `(link ((,class (:foreground "#61afef" :underline t))))
   `(link-visited ((,class (:foreground "#61afef" :underline t))))
   `(fringe ((,class (:background "#000000"))))
   `(header-line ((,class (:foreground "#abb2bf" :background "#282c34"))))
   `(tooltip ((,class (:foreground "#abb2bf" :background "#333842"))))))

(custom-theme-set-variables
 'custom-dark
 '(ansi-color-names-vector
   ["#000000" "#ff6c6b" "#98c379" "#e5c07b"
    "#61afef" "#c678dd" "#56b6c2" "#abb2bf"]))

(provide-theme 'custom-dark)
