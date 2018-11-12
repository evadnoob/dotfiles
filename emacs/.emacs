
;;
;; main entry point into my .emacs.d 
;;


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq dmb-dotemacs-start-time (current-time))

(defconst running-xemacs (string-match "XEmacs\\|Lucid" (emacs-version)))
(defconst running-gnu-emacs (string-match "GNU Emacs" (emacs-version)))
(defconst running-gnu-emacs-on-linux (and running-gnu-emacs (string= "gnu/linux" system-type)))
(defconst running-emacs-on-cygwin (string-match "-cygwin" (emacs-version)))
(defconst is-emacs-23 (string-match "GNU Emacs 23\." (emacs-version)))
(defconst is-darwin (string-match "darwin" (emacs-version)))

(defun *emacs (path)
  (if is-darwin 
      (expand-file-name (concat "~/dotfiles/emacs/" path))
    (expand-file-name (concat "~/dotfiles/emacs/" path))))

(add-to-list 'load-path (*emacs ""))
(add-to-list 'load-path (*emacs "emacs.p"))

(load-library "setup-melpa")
(load-library "setup-sensible-defaults")
;; ;;(load-library "setup-transparency")
;;(if (not (display-graphic-p))
;;    (load-library "setup-appearance"))

;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(Buffer-menu-buffer+size-width 40)
;;  '(ansi-color-names-vector
;;    (vector "black" "sienna" "green" "white" "DarkOliveGreen4" "DarkRed" "blue" "white"))
;;  '(auto-insert (quote other))
;;  '(auto-insert-directory "~/dotfiles/emacs/auto-insert-templates/")
;;  '(backup-inhibited t t)
;;  '(completion-ignore-case t t)
;;  '(custom-safe-themes
;;    (quote
;;     ("413977a7c905d98c611829fd7b0eff2c299e210f4cca58a27dff0901b36fc8e3" "a3d85397a299ff5d7cbbfc0ca7031f60249cc99a320c8e5bf88489d36ceb08ed" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "8cb72a41765bb3b2598bc815174bbc8d0669f899c88dc7cff787e7ce2f0c6648" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "c4bd8fa17f1f1fc088a1153ca676b1e6abc55005e72809ad3aeffb74bd121d23" default)))
;;  '(debug-on-error t)
;;  '(dired-listing-switches "-ghG")
;;  '(display-line-numbers-width 4)
;;  '(evil-move-cursor-back nil)
;;  '(evil-regexp-search t)
;;  '(evil-want-fine-undo t)
;;  '(flycheck-gometalinter-concurrency 1)
;;  '(flycheck-gometalinter-deadline "20s")
;;  '(glasses-face "bold")
;;  '(glasses-original-separator "")
;;  '(glasses-separate-parentheses-p nil)
;;  '(glasses-separator "")
;;  '(indent-tabs-mode nil)
;;  '(mode-line-format
;;    (quote
;;     ("%e" mode-line-front-space mode-line-mule-info mode-line-client mode-line-modified mode-line-remote mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position evil-mode-line-tag
;;      (vc-mode vc-mode)
;;      "  " mode-line-modes mode-line-misc-info)))
;;  '(nil nil t)
;;  '(nxhtml-global-minor-mode t)
;;  '(nxhtml-skip-welcome t)
;;  '(org-cycle-global-at-bob t)
;;  '(org-directory "~/Dropbox/org-mode-files")
;;  '(org-src-fontify-natively t)
;;  '(package-selected-packages
;;    (quote
;;     (ivy-ricy ivy-rich counsel org-beautify-theme smart-mode-line yari yaml-mode which-key volatile-highlights visible-mark use-package try toml-mode swiper spaceline smooth-scrolling smart-cursor-color scss-mode sass-mode robe rcirc-color rainbow-mode rainbow-delimiters racer paredit org-journal org-evil org-bullets org-ac nord-theme neotree modeline-posn markdown-mode mark-multiple magit lua-mode lorem-ipsum java-snippets helm-robe helm-projectile helm-ag-r helm-ag haskell-mode guide-key groovy-mode go-snippets go-projectile gist ggtags fzf flymake-less flycheck-rust flycheck-gometalinter evil-tutor evil-terminal-cursor-changer evil-surround evil-search-highlight-persist evil-org evil-matchit evil-leader evil-exchange evil-escape evil-args ensime dockerfile-mode delight deft company-racer company-go coffee-mode clojure-mode change-inner beacon auctex anything annoying-arrows-mode ace-window)))
;;  '(split-height-threshold nil)
;;  '(split-width-threshold 450)
;;  '(tramp-syntax (quote default) nil (tramp))
;;  '(truncate-lines 1))

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)


(load-library "setup-line-numbers")
(load-library "setup-themes")
;(load-theme 'nord t)
(load-theme 'dmb-bliss t)
;; (load-library "setup-grep")
(load-library "setup-org-mode")
;; (load-library "setup-shell-mode")
;; ;;(load-library "setup-ansi-term")
;; (load-library "setup-erc")
;; (load-library "setup-nxml-mode")
;; ;;(load-library "setup-js-mode")
;; ;;(load-library "setup-linum-mode")
;; (load-library "setup-lorem-ipsum")
;; (load-library "setup-eval-and-replace")
(load-library "setup-keybindings")
;; ;;(load-library "setup-helm")
(load-library "setup-text-manipulation")
;; (load-library "setup-isearch")
;; (load-library "setup-server")
;; ;;(load-library "setup-ido")
;; ;;(load-library "setup-change-inner")
;; (load-library "setup-mark-multiple")
;; ;;(load-library "setup-markdown-mode")
;; ;;(load-library "setup-nw")
;; ;;(load-library "setup-undo-tree")
;; (load-library "setup-python-mode")
;; (load-library "setup-magit") 
;; ;;(load-library "setup-highlight-line-mode")
;; ;;(load-library "setup-ack")
;; ;;(load-library "setup-scala-mode")
;; ;;(load-library "setup-dockerfile-mode")
;; ;;(load-library "setup-delight")
;; ;;(load-library "setup-copy-and-paste")
(load-library "setup-beacon")
;; (load-library "setup-anything")
(load-library "setup-golang")
;;(load-library "setup-spaceline")
;;(load-library "setup-helm-mode")

;; ;; (load-library "setup-flx")
;; ;; (load-library "setup-god-mode")
(load-library "setup-evil-mode")
(load-library "setup-swiper")
;; ;;(load-library "setup-ag-mode")
;; ;;(load-library "setup-rust-mode")

(load-library "setup-find-file-at-line-number")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(line-number-current-line ((t (:foreground "white" :background "color-33"))))
 '(mode-line-inactive ((t (:inherit mode-line :background "black" :foreground "gray60" :inverse-video nil :box nil :weight light)))))
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(Buffer-menu-buffer+size-width 40)
;;  '(auto-insert (quote other))
;;  '(auto-insert-directory "~/dotfiles/emacs/auto-insert-templates/")
;;  '(backup-inhibited t t)
;;  '(completion-ignore-case t t)
;;  '(custom-safe-themes
;;    (quote
;;     ("c4bd8fa17f1f1fc088a1153ca676b1e6abc55005e72809ad3aeffb74bd121d23" default)))
;;  '(dired-listing-switches "-ghG")
;;  '(display-line-numbers-width 4)
;;  '(evil-move-cursor-back nil)
;;  '(evil-regexp-search t)
;;  '(evil-want-fine-undo t)
;;  '(flycheck-gometalinter-concurrency 1)
;;  '(flycheck-gometalinter-deadline "20s")
;;  '(glasses-face "bold")
;;  '(glasses-original-separator "")
;;  '(glasses-separate-parentheses-p nil)
;;  '(glasses-separator "")
;;  '(indent-tabs-mode nil)
;;  '(mode-line-format
;;    (quote
;;     ("%e" mode-line-front-space mode-line-mule-info mode-line-client mode-line-modified mode-line-remote mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position evil-mode-line-tag
;;      (vc-mode vc-mode)
;;      "  " mode-line-modes mode-line-misc-info)))
;;  '(nxhtml-global-minor-mode t)
;;  '(nxhtml-skip-welcome t)
;;  '(org-cycle-global-at-bob t)
;;  '(org-directory "~/Dropbox/org-mode-files")
;;  '(org-src-fontify-natively t)
;;  '(package-selected-packages
;;    (quote
;;     (org-beautify-theme spacemacs-theme spaceline fzf nord-theme yari yaml-mode which-key volatile-highlights visible-mark use-package try toml-mode swiper smooth-scrolling smart-cursor-color scss-mode sass-mode robe rcirc-color rainbow-mode rainbow-delimiters racer paredit org-journal org-evil org-bullets org-ac neotree modeline-posn markdown-mode mark-multiple magit lua-mode lorem-ipsum java-snippets helm-robe helm-projectile helm-ag haskell-mode guide-key groovy-mode go-snippets go-projectile gist ggtags flymake-less flycheck-rust flycheck-gometalinter evil-tutor evil-terminal-cursor-changer evil-surround evil-search-highlight-persist evil-org evil-matchit evil-leader evil-exchange evil-escape evil-args ensime dockerfile-mode delight deft company-racer company-go coffee-mode clojure-mode change-inner beacon auctex anything annoying-arrows-mode ace-window)))
;;  '(split-height-threshold nil)
;;  '(split-width-threshold 450)
;;  '(tramp-syntax (quote default) nil (tramp))
;;  '(truncate-lines 1))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Buffer-menu-buffer+size-width 40)
 '(auto-insert 'other)
 '(auto-insert-directory "~/dotfiles/emacs/auto-insert-templates/")
 '(backup-inhibited t t)
 '(completion-ignore-case t t)
 '(custom-safe-themes
   '("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "8cb72a41765bb3b2598bc815174bbc8d0669f899c88dc7cff787e7ce2f0c6648" default))
 '(dired-listing-switches "-ghG")
 '(display-line-numbers-width 4)
 '(evil-move-cursor-back nil)
 '(evil-regexp-search t)
 '(evil-want-fine-undo t)
 '(flycheck-gometalinter-concurrency 1)
 '(flycheck-gometalinter-deadline "20s")
 '(glasses-face "bold")
 '(glasses-original-separator "")
 '(glasses-separate-parentheses-p nil)
 '(glasses-separator "")
 '(indent-tabs-mode nil)
 '(mode-line-format
   '("%e" mode-line-front-space mode-line-mule-info mode-line-client mode-line-modified mode-line-remote mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position evil-mode-line-tag
     (vc-mode vc-mode)
     "  " mode-line-modes mode-line-misc-info))
 '(nxhtml-global-minor-mode t)
 '(nxhtml-skip-welcome t)
 '(org-cycle-global-at-bob t)
 '(org-directory "~/Dropbox/org-mode-files")
 '(org-src-fontify-natively t)
 '(package-selected-packages
   '(spaceline fzf smart-mode-line-powerline-theme go-snippets evil-escape flycheck-gometalinter go-projectile company-go org-journal org-bullets yari yaml-mode which-key volatile-highlights visible-mark use-package try toml-mode swiper smooth-scrolling smart-cursor-color scss-mode sass-mode rcirc-color rainbow-mode rainbow-delimiters racer paredit org-evil org-ac neotree markdown-mode mark-multiple magit lua-mode lorem-ipsum java-snippets inf-ruby helm-projectile helm-ag haskell-mode guide-key groovy-mode go-mode gist ggtags flymake-less flycheck-rust evil-tutor evil-terminal-cursor-changer evil-surround evil-search-highlight-persist evil-org evil-matchit evil-leader evil-exchange evil-args ensime dockerfile-mode delight deft company-racer coffee-mode clojure-mode change-inner beacon auctex anything annoying-arrows-mode ace-window))
 '(split-height-threshold nil)
 '(split-width-threshold 450)
 '(tramp-syntax 'default nil (tramp))
 '(truncate-lines 1))
