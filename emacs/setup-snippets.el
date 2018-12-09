
(add-to-list 'load-path "~/dotfiles/emacs/emacs-snippets/")
(use-package emacs-snippets :after yasnippet)

(global-set-key "\C-x\C-s"        'company-yasnippet)
