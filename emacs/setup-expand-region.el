(require 'expand-region)

(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key "\M-[up]" 'er/expand-region)
(use-package expand-region
  :ensure t
  :bind ("C-=" . er/expand-region))

(provide 'setup-expand-region)
