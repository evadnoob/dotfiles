(when (> emacs-major-version 23)
  (require 'package)
  
  (setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
			   ("elpa" . "http://tromey.com/elpa/")
			   ("gnu" . "http://elpa.gnu.org/packages/")
			   ("marmalade" . "http://marmalade-repo.org/packages/")))
  
  (package-initialize))

(require 'cl)

(defvar evadnoob/required-packages
  ' (   
    auctex
    auto-complete
    change-inner
    clojure-mode
    coffee-mode
    deft expand-region
    ensime
    flymake-less
    flymake-easy
    gist
    groovy-mode
    haml-mode
    haskell-mode
    helm-ag
    inf-ruby
    lorem-ipsum
    lua-mode
    mark-multiple
    magit
    markdown-mode
    paredit
    pbcopy
    projectile
    python
    sass-mode
    rainbow-mode
    scss-mode
    undo-tree
    visible-mark
    volatile-highlights
    yaml-mode
    yari modeline-posn
    yasnippet ack-and-a-half
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

