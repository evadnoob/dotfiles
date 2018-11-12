
(use-package ivy-rich :ensure t
  :init
  (ivy-set-display-transformer 'ivy-switch-buffer 'ivy-rich-switch-buffer-transformer)
  (setq ivy-rich-path-style 'abbrev))

(provide 'setup-ivy)
