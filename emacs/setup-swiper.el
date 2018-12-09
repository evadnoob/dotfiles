;;; setup-swiper.el --- setup swiper                 -*- lexical-binding: t; -*-

(require 'swiper)
(global-set-key "\C-s"           'swiper)
(global-set-key "\C-r"           'isearch-backward-regexp)

(use-package "ivy" :ensure t)
(ivy-mode 1)


(setq magit-completing-read-function 'ivy-completing-read)
(provide 'setup-swiper)
;;; setup-swiper.el ends here
