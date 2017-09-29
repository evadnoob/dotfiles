(require 'evil)
(evil-mode 1)
(require 'evil-args)

(custom-set-variables
 '(evil-want-fine-undo t)
'(evil-regexp-search t)
'(evil-move-cursor-back nil)
 ;;'(evil-insert-state-cursor '("red" (bar . 3)))
 )



;; (setq evil-visual-state-cursor 'box) ; █
;; (setq evil-normal-state-cursor '("gray" (box . 2))) ; █
;; (setq evil-insert-state-cursor '("chartreuse3" (bar . 1))) ; ⎸
;; (setq evil-emacs-state-cursor 'hbar) ; _

;; (setq evil-insert-state-cursor '((bar . 5) "yellow")
;;       evil-normal-state-cursor '(box "purple"))

;; Bar cursor
;; These escape sequences work for urxvt
(defun test-send-str-to-terminal (str)
  (unless (display-graphic-p) (send-string-to-terminal str)))

;; this works when terminal is urxvt
;;(add-hook 'evil-insert-state-entry-hook (lambda () (test-send-str-to-terminal "\033[6 q")))
;;(add-hook 'evil-insert-state-exit-hook (lambda () (test-send-str-to-terminal "\033[2 q")))
;; this works when terminal is xfce4-terminal:
;; InsertEnter * silent execute "!sed -i.bak -e 's/TERMINAL_CURSOR_SHAPE_BLOCK/TERMINAL_CURSOR_SHAPE_UNDERLINE/' ~/.config/xfce4/terminal/terminalrc"                                                                                          
;; InsertLeave * silent execute "!sed -i.bak -e 's/TERMINAL_CURSOR_SHAPE_UNDERLINE/TERMINAL_CURSOR_SHAPE_BLOCK/' ~/.config/xfce4/terminal/terminalrc"                                                                                          
;; VimLeave * silent execute "!sed -i.bak -e 's/TERMINAL_CURSOR_SHAPE_UNDERLINE/TERMINAL_CURSOR_SHAPE_BLOCK/' ~/.config/xfce4/terminal/terminalrc"  
(add-hook 'evil-insert-state-entry-hook (lambda () (shell-command "sed -i.bak -e 's/TERMINAL_CURSOR_SHAPE_BLOCK/TERMINAL_CURSOR_SHAPE_UNDERLINE/' ~/.config/xfce4/terminal/terminalrc")))
(add-hook 'evil-insert-state-exit-hook (lambda () (shell-command "sed -i.bak -e 's/TERMINAL_CURSOR_SHAPE_UNDERLINE/TERMINAL_CURSOR_SHAPE_BLOCK/' ~/.config/xfce4/terminal/terminalrc")))

                                          
;;(setcdr evil-insert-state-map nil)
;;(define-key evil-insert-state-map [escape] 'evil-normal-state)
;;(define-key evil-visual-state-map [escape] 'evil-normal-state)

;;; esc quits
;;(define-key evil-normal-state-map [escape] 'keyboard-quit)
;; (define-key evil-visual-state-map [escape] 'keyboard-quit)
;; (define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)


(define-key evil-normal-state-map (kbd "C-r") 'isearch-backward) 
(define-key evil-normal-state-map (kbd "M-y") 'counsel-yank-pop) 



;; ;; change mode-line color by evil state
;; (lexical-let ((default-color (cons (face-background 'mode-line)
;;                                    (face-foreground 'mode-line))))
;;   (add-hook 'post-command-hook
;;             (lambda ()
;;               (let ((color (cond ((minibufferp) default-color)
;;                                  ((evil-insert-state-p) '("color-16" . "white"))
;;                                  ((evil-emacs-state-p)  '("color-16" . "#444488"))
;;                                  ((buffer-modified-p)   '("color-16" . "#006fa0"))
;;                                  (t default-color))))
;;                 (set-face-background 'mode-line-buffer-id (car color))
;;                 (set-face-foreground 'mode-line-buffer-id (cdr color))))))


(unless (display-graphic-p)
    (require 'evil-terminal-cursor-changer))

(require 'evil-args)

;; bind evil-args text objects
(define-key evil-inner-text-objects-map "a" 'evil-inner-arg)
(define-key evil-outer-text-objects-map "a" 'evil-outer-arg)

;; bind evil-forward/backward-args
(define-key evil-normal-state-map "L" 'evil-forward-arg)
(define-key evil-normal-state-map "H" 'evil-backward-arg)
(define-key evil-motion-state-map "L" 'evil-forward-arg)
(define-key evil-motion-state-map "H" 'evil-backward-arg)

(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)


;; esc quits
(defun minibuffer-keyboard-quit ()
  "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
      (setq deactivate-mark  t)
    (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
    (abort-recursive-edit)
    (etcc--set-box-cursor)))




(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(global-set-key [escape] 'evil-exit-emacs-state)


;; bind evil-jump-out-args
(define-key evil-normal-state-map "K" 'evil-jump-out-args)


;; (setq evil-emacs-state-cursor '("red" box))
;; (setq evil-normal-state-tag   (propertize "N" 'face '((:background "green" :foreground "black")))
;;       evil-emacs-state-tag    (propertize "E" 'face '((:background "orange" :foreground "black")))
;;       evil-insert-state-tag   (propertize "I" 'face '((:background "red")))
;;       evil-motion-state-tag   (propertize "M" 'face '((:background "blue")))
;;       evil-visual-state-tag   (propertize "V" 'face '((:background "grey80" :foreground "black")))
;;       evil-operator-state-tag (propertize "O" 'face '((:background "purple"))))


;;(smart-cursor-color-mode +1)


(require 'highlight)
(require 'evil-search-highlight-persist)
(global-evil-search-highlight-persist t)

;; To only display string whose length is greater than or equal to 3
;; (setq evil-search-highlight-string-min-len 3)



(eval-after-load 'bs
  '(progn
     ;; use the standard bs bindings as a base
     (evil-make-overriding-map bs-mode-map 'normal t)
     (evil-define-key 'motion bs-mode-map "h" 'evil-backward-char)
     (evil-define-key 'motion bs-mode-map "j" 'bs-down)
     (evil-define-key 'motion bs-mode-map "k" 'bs-up)
     (evil-define-key 'motion bs-mode-map "l" 'evil-forward-char)
     ))


(evil-add-hjkl-bindings ibuffer-mode-map 'emacs)
(evil-add-hjkl-bindings magit-branch-manager-mode-map 'emacs
  "K" 'magit-discard-item
  "L" 'magit-key-mode-popup-logging)
(evil-add-hjkl-bindings magit-status-mode-map 'emacs
  "K" 'magit-discard-item
  "l" 'magit-key-mode-popup-logging
  "h" 'magit-toggle-diff-refine-hunk)
(evil-add-hjkl-bindings magit-log-mode-map 'emacs)
(evil-add-hjkl-bindings magit-commit-mode-map 'emacs)
(evil-add-hjkl-bindings occur-mode 'emacs)


;; ;; Use a quick jk to switch back into normal
;; (evil-define-command cofi/evil-maybe-exit ()
;;   :repeat change
;;   (interactive)
;;   (let ((modified (buffer-modified-p))
;;         (entry-key ?j)
;;         (exit-key ?k))
;;     (insert entry-key)
;;     (let ((evt (read-event (format "Insert %c to exit insert state" exit-key) nil 0.5)))
;;       (cond
;;        ((null evt) (message ""))
;;        ((and (integerp evt) (char-equal evt exit-key))
;;           (delete-char -1)
;;           (set-buffer-modified-p modified)
;;           (push 'escape unread-command-events))
;;        (t (push evt unread-command-events))))))

;; (fill-keymap evil-insert-state-map
;;              ;;"j"   'cofi/evil-maybe-exit
;;              "C-h" 'backward-delete-char
;;              "C-y" 'yank
;;              "C-e" 'end-of-line)

;; ; https://zuttobenkyou.wordpress.com/2011/02/15/some-thoughts-on-emacs-and-vim/
;; ; make "kj" behave as ESC key ,adapted from http://permalink.gmane.org/gmane.emacs.vim-emulation/684
;; ; you can easily change it to map "jj" or "kk" or "jk" to ESC)
;; (defun escape-if-next-char (c)
;;     "Watches the next letter.  If c, then switch to Evil's normal mode; otherwise insert a k and forward unpressed key to unread-command events"
;;       (self-insert-command 1)
;;         (let ((next-key (read-event)))
;;               (if (= c next-key)
;;                         (progn
;;                                     (delete-backward-char 1)
;;                                               (evil-esc))
;;                               (setq unread-command-events (list next-key)))))
 
;; (defun escape-if-next-char-is-j (arg)
;;     (interactive "p")
;;       (if (= arg 1)
;;               (escape-if-next-char ?j)
;;                   (self-insert-command arg)))
 
;; (define-key evil-insert-state-map (kbd "k") 'escape-if-next-char-is-j)


(use-package evil-escape :ensure t
  :init 
  (setq-default evil-escape-key-sequence "jk"))

(require 'evil-leader)
(setq evil-leader/leader ";"
      evil-leader/in-all-states t)
(global-evil-leader-mode)

(evil-leader/set-key
  "w" 'save-buffer
  "W" 'save-some-buffers
  "k" 'kill-current-buffer
  "K" 'kill-buffer-and-window
  "g" 'magit-status
  "m" 'compile
  "be" 'ibuffer
  "bs" 'bs-show
 ;; "bi" 'iswitchb-buffer
  "h" 'helm-mini
  "a" 'git-blame-mode
  "e" 'find-file
  "f" 'grep
  "c" 'compile
  "v" 'go-guru-expand-region
  "d" 'dired-jump
  "oj" 'org-journal-new-entry)


(require 'evil-matchit)


(require 'evil-exchange)
;; change default key bindings (if you want) HERE
;; (setq evil-exchange-key (kbd "zx"))
(evil-exchange-install)

(defun evil-normalize-all-buffers ()
  "Force a drop to normal state."
  (unless (eq evil-state 'normal)
    (dolist (buffer (buffer-list))
      (set-buffer buffer)
      (unless (or (minibufferp)
                  (eq evil-state 'emacs))
        (evil-force-normal-state)))
    ))

;; (defvar evil-normal-timer
;;   (run-with-idle-timer 10 t #'evil-normalize-all-buffers)
;;   "Drop back to normal state after idle for 30 seconds.")

(add-hook 'before-make-frame-hook (lambda ()
                                    (message "before-make-frame-hook")
                                    (evil-normal-state)))

(add-hook 'make-frame-hook (lambda (frame)
                                    (message "make-frame-hook")
                                    (beacon-blink)
                                    (evil-normal-state)))

(add-hook 'delete-frame-functions
          (lambda ()
            (message "delete frame hook")
            (evil-normal-state)))

(add-hook 'find-file-hook
          (lambda ()
            (message "find file hook, going into evil-normal-state")
            (evil-normal-state)))

(provide 'setup-evil-mode)

