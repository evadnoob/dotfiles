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

(add-to-list 'load-path (*emacs "emacs.d"))
(add-to-list 'load-path (*emacs "emacs.p"))

(load-library "setup-melpa")
(load-library "setup-sensible-defaults")
;;(load-library "setup-transparency")
(load-library "setup-appearance")
(load-library "setup-grep")
(load-library "setup-org-mode")
(load-library "setup-shell-mode")
;;(load-library "setup-ansi-term")
(load-library "setup-erc")
(load-library "setup-nxml-mode")
;;(load-library "setup-js-mode")
;;(load-library "setup-linum-mode")
(load-library "setup-lorem-ipsum")
(load-library "setup-eval-and-replace")
(load-library "setup-keybindings")
;;(load-library "setup-helm")
(load-library "setup-text-manipulation")
(load-library "setup-isearch")
(load-library "setup-server")
;;(load-library "setup-ido")
;;(load-library "setup-change-inner")
(load-library "setup-mark-multiple")
;;(load-library "setup-markdown-mode")
;;(load-library "setup-nw")
;;(load-library "setup-undo-tree")
(load-library "setup-python-mode")
;;(load-library "setup-magit") 
;;(load-library "setup-highlight-line-mode")
;;(load-library "setup-ack")
;;(load-library "setup-scala-mode")
;;(load-library "setup-dockerfile-mode")
;;(load-library "setup-delight")
;;(load-library "setup-copy-and-paste")

(load-library "setup-anything")

(load-library "setup-golang")

;; (load-library "setup-flx")
;; (load-library "setup-god-mode")
(load-library "setup-evil-mode")
;;(load-library "setup-ag-mode")
;;(load-library "setup-rust-mode")

;;brew install emacs --cocoa --use-git-head --HEAD
;; To open it with Alfred or Quicksilver, you have to copy Emacs.app into /Applications instead of the symlink that brew places there.

(setq dmb-dotemacs-end-time (current-time))
;;(message 
;; (format "emacs init-time %s, wall clock %s ." (emacs-init-time) (time-to-seconds (time-subtract dmb-dotemacs-end-time dmb-dotemacs-start-time))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Buffer-menu-buffer+size-width 40)
 '(auto-insert (quote other))
 '(auto-insert-directory "~/dotfiles/emacs/auto-insert-templates/")
 '(backup-inhibited t t)
 '(completion-ignore-case t t)
 '(custom-safe-themes
   (quote
    ("612ec5de510341db60391367dd3c3615deb06066a22b805fe3fdb6433b9c3da4" "893f0a4c187524b5fb2cfb5c5dccb40faef3914045ff82d13de5d57e105c7ebf" "a430857b5359b0051a74771a5c3c622bc00a0c930369b5b4a3b575992a767ffc" "67fadbf89c59c0290a6e1fad876350d6b14ee0e7c74492d5ed74cf6254104f45" default)))
 '(custom-theme-directory (*emacs "/themes"))
 '(dired-listing-switches "-ghG")
 '(erc-enable-logging (quote erc-log-all-but-server-buffers))
 '(erc-hide-list (quote ("JOIN" "PART" "QUIT" "NICK" "MODE" "TOPIC")))
 '(erc-kill-queries-on-quit t)
 '(erc-kill-server-buffer-on-quit t)
 '(erc-log-channels-directory "~/.erc.logs")
 '(erc-modules
   (quote
    (netsplit fill button match track completion readonly networks ring autojoin noncommands irccontrols move-to-prompt stamp menu list scrolltobottom)))
 '(erc-ring-mode 1)
 '(evil-move-cursor-back nil)
 '(evil-regexp-search t)
 '(evil-want-fine-undo t)
 '(indent-tabs-mode nil)
 '(isearch-allow-scroll t)
 '(mode-line-format
   (quote
    ("%e" mode-line-front-space mode-line-mule-info mode-line-client mode-line-modified mode-line-remote mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position evil-mode-line-tag
     (vc-mode vc-mode)
     "  " mode-line-modes mode-line-misc-info)))
 '(nxhtml-global-minor-mode t)
 '(nxhtml-skip-welcome t)
 '(org-cycle-global-at-bob t)
 '(org-directory "~/Dropbox/org-mode-files")
 '(setq python-indent-offset)
 '(socks-noproxy (quote ("localhost")) t)
 '(socks-override-functions 1 t)
 '(socks-server (list "tor" "localhost" 9050 5))
 '(split-height-threshold nil)
 '(split-width-threshold 450)
 '(truncate-lines 1)
 '(visible-cursor nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
