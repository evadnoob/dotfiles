;;; setup-line-numbers.el ---                              -*- lexical-binding: t; -*-

;; Copyright (C) 2017  David M. Boon

;; Author: David M. Boon <david.boon@gmail.com>
;; Keywords: 


(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(custom-set-variables
 '(display-line-numbers-width 4))

(custom-set-faces
 '(line-number-current-line ((t (:foreground "white" :background "color-33")))))

(provide 'setup-line-numbers)
