(when (> emacs-major-version 23)
  (require 'package)
 ;;marmalade-repo.org:443 
  (setq package-archives '(
                           ("melpa-stable" . "http://stable.melpa.org/packages/")
                           ("melpa" . "http://melpa.org/packages/")
                           ;;("marmalade"   . "http://marmalade-repo.org/packages/")
                           ("org"         . "http://orgmode.org/elpa/")
			   ;;("elpa" . "http://tromey.com/elpa/")
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

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'cl)


(defvar evadnoob/required-packages
  ' (
     ace-window
     anything
     annoying-arrows-mode
     auctex
     auto-complete
     beacon
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
     evil-exchange
     evil-org
     evil-search-highlight-persist
     evil-terminal-cursor-changer
     evil-args
     evil-leader
     evil-surround
     evil-matchit
;;     evil-annoying-arrows
     evil-tutor
     expand-region
     flymake-less
     flymake-easy
     flycheck-rust
     gist
     ggtags
     go-mode
     groovy-mode
     guide-key
     haml-mode
     haskell-mode
     helm-ag
     helm-projectile
     inf-ruby 
     lorem-ipsum
     lua-mode
     mark-multiple
     magit
     markdown-mode
     neotree
     org
     org-ac
     org-evil
     paredit
     ;;pbcopy
     projectile
     python
     sass-mode
     rainbow-delimiters
     rcirc
     rcirc-color
     racer
     rust-mode
     subword
     rainbow-mode
     scala-mode
     scss-mode
     smart-cursor-color
     smooth-scrolling
     swiper
     toml-mode
     visible-mark
     volatile-highlights
     java-snippets
     yaml-mode
     yari
     ;;modeline-posn
     yasnippet
    ;; ack-and-a-half
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

