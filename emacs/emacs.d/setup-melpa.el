(when (> emacs-major-version 23)
  (require 'package)
  
  (setq package-archives '(("marmalade" . "http://marmalade-repo.org/packages/")
                           ("melpa" . "http://melpa.milkbox.net/packages/")
			   ("elpa" . "http://tromey.com/elpa/")
                           ("gnu" . "http://elpa.gnu.org/packages/")))

  ;; Bootstrap `use-package'
  (unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

  (use-package try
               :ensure t)

  (use-package which-key
               :ensure t 
               :config
               (which-key-mode))

  (package-initialize))


(require 'cl)


(defvar evadnoob/required-packages
  ' (
     ace-window
     annoying-arrows-mode
     auctex
     auto-complete
     change-inner
     clojure-mode
     coffee-mode
     company
     company-racer
     deft expand-region
     dockerfile-mode
     delight
     ensime
     evil
     evil-org
     evil-search-highlight-persist
     evil-terminal-cursor-changer
     evil-args
     evil-leader
     ;;evil-suround
     evil-matchit
     evil-annoying-arrows
     evil-tutor
     expand-region
     flymake-less
     flymake-easy
     flycheck-rust
     gist
     ggtags
     groovy-mode
     guide-key
     haml-mode
     haskell-mode
     helm-ag
     inf-ruby
     lorem-ipsum
     lua-mode
     mark-multiple
     magit
     markdown-mode
     neotree
     org
     org-ac
     paredit
     ;;pbcopy
     projectile
     python
     sass-mode
     rcirc
     rcirc-color
     racer
     rust-mode
     subword
     rainbow-mode
     scala-mode
     scss-mode
     smart-cursor-color
     swiper
     toml-mode
     visible-mark
     volatile-highlights
     java-snippets
     yaml-mode
     yari modeline-posn
     yasnippet
     ack-and-a-half
     )
    "A list of packages to ensure are installed at launch.")

(defun evadnoob/packages-installed-p ()

  (loop for p in evadnoob/required-packages
	when (not (package-installed-p p)) do (return nil)
	finally (return t)))

(unless (evadnoob/packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p evadnoob/required-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'setup-melpa)

