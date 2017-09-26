;;; setup-spaceline.el ---                           -*- lexical-binding: t; -*-

;; Copyright (C) 2017  David M. Boon

;; Author: David M. Boon <david.boon@gmail.com>

;; (require 'spaceline-config)

;; (setq evil-normal-state-tag "NORMAL")
;; (setq evil-insert-state-tag "INSERT")
;; (spaceline-emacs-theme)
;; (spaceline-toggle-major-mode-off)
;; (spaceline-toggle-minor-modes-off)


(use-package spaceline :ensure t
  :config
  (setq-default
   powerline-height 24
   powerline-default-separator 'wave
   spaceline-flycheck-bullet "❖ %s"
   spaceline-separator-dir-left '(right . right)
   spaceline-separator-dir-right '(left . left))

  (setq evil-normal-state-tag "NORMAL")
  (setq evil-insert-state-tag "INSERT")
  (spaceline-emacs-theme)

  (set-face-attribute 'spaceline-evil-emacs nil :background "black")
  (set-face-attribute 'spaceline-evil-insert nil :background "#5fd7ff")
  (set-face-attribute 'spaceline-evil-motion nil :background "#ae81ff")
  (set-face-attribute 'spaceline-evil-normal nil :background "yellow")
  (set-face-attribute 'spaceline-evil-replace nil :background "#f92672")
  (set-face-attribute 'spaceline-evil-visual nil :background "#fd971f")
  ;;(set-face-attribute 'mode-line-buffer-id nil :foreground "black" :background "#E1BEE7")
  (set-face-attribute 'mode-line-buffer-id nil :foreground "white" :background "black")
  (set-face-attribute 'mode-line-emphasis  nil :foreground "black" :background "green")
  ;;(setq-default mode-line-format '("%e" (:eval (spaceline-ml-main))))
  (setq-default spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
  )

(use-package spaceline-config
  :ensure spaceline
  :config
  (spaceline-install
   'main
   '(
     (evil-state :face highlight-face :when t)
     (projectile-root  :face mode-line-emphasis)
     ((remote-host buffer-id version-control) :separator " - " :face mode-line-buffer-id )
     (nyan-cat)
     (process :when active))
   '((selection-info :face region :when mark-active)
     ((flycheck-error flycheck-warning flycheck-info) :when t)
     (which-function)

     (major-mode  :face mode-line-emphasis)
     (global :when active)
     ))
  )

(provide 'setup-spaceline)
;; Local Variables:
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

