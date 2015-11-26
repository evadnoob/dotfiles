;;
;; main entry point into my .emacs.d 
;;

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
(load-library "setup-nw")
;;(load-library "setup-undo-tree")
(load-library "setup-python-mode")
;;(load-library "setup-magit") 
;;(load-library "setup-highlight-line-mode")
;;(load-library "setup-ack")
;;(load-library "setup-scala-mode")
;;(load-library "setup-dockerfile-mode")
;;(load-library "setup-delight")
(load-library "setup-copy-and-paste")



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
