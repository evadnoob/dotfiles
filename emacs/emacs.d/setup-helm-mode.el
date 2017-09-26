;;; setup-helm-mode.el --- my setup for helm         -*- lexical-binding: t; -*-

;; Copyright (C) 2017  David M. Boon

;; Author: David M. Boon <david.boon@gmail.com>
;; Keywords: 


(use-package helm
  :ensure t
  :init
  (progn
    (require 'helm-config)
    ;; limit max number of matches displayed for speed
    (setq helm-candidate-number-limit 100)
    ;; ignore boring files like .o and .a
    (setq helm-ff-skip-boring-files t)

    ;; (global-set-key (kbd "C-c h") 'helm-mini)
    ;; (global-set-key (kbd "C-c h") 'helm-mini)

   ;; replace locate with spotlight on Mac
    (setq helm-locate-command "mdfind -name %s %s"))
  :bind (("C-x f" . helm-for-files)
         ("M-a" . helm-mini)))

(provide 'setup-helm-mode)
