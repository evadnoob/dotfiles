 (require 'delight)
 (delight '((abbrev-mode " Abv" abbrev)
            (smart-tab-mode " \\t" smart-tab)
            (eldoc-mode nil "eldoc")
            (rainbow-mode)
            (smart-cursor-color-mode nil "smart-cursor-color")
            (emacs-lisp-mode "E" :major)))


(provide 'setup-delight)
