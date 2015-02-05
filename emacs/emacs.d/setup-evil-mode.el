(require 'evil)
(evil-mode 1)
(require 'evil-args)

(custom-set-variables
 '(evil-want-fine-undo t)
 '(evil-regexp-search t)
 '(evil-move-cursor-back nil)
 '(evil-insert-state-cursor '("red" (bar . 3))))


(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map [escape] 'evil-normal-state)
(define-key evil-visual-state-map [escape] 'evil-normal-state)

;;; esc quits
;;(define-key evil-normal-state-map [escape] 'keyboard-quit)
;; (define-key evil-visual-state-map [escape] 'keyboard-quit)
;; (define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)


(define-key evil-normal-state-map (kbd "C-r") 'isearch-backward) 


;; change mode-line color by evil state
(lexical-let ((default-color (cons (face-background 'mode-line)
                                   (face-foreground 'mode-line))))
  (add-hook 'post-command-hook
            (lambda ()
              (let ((color (cond ((minibufferp) default-color)
                                 ((evil-insert-state-p) '("color-16" . "white"))
                                 ((evil-emacs-state-p)  '("color-16" . "#444488"))
                                 ((buffer-modified-p)   '("color-16" . "#006fa0"))
                                 (t default-color))))
                (set-face-background 'mode-line-buffer-id (car color))
                (set-face-foreground 'mode-line-buffer-id (cdr color))))))





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
    (abort-recursive-edit)))
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


(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-tag   (propertize "N" 'face '((:background "green" :foreground "black")))
      evil-emacs-state-tag    (propertize "E" 'face '((:background "orange" :foreground "black")))
      evil-insert-state-tag   (propertize "I" 'face '((:background "red")))
      evil-motion-state-tag   (propertize "M" 'face '((:background "blue")))
      evil-visual-state-tag   (propertize "V" 'face '((:background "grey80" :foreground "black")))
      evil-operator-state-tag (propertize "O" 'face '((:background "purple"))))


(smart-cursor-color-mode +1)



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

; https://zuttobenkyou.wordpress.com/2011/02/15/some-thoughts-on-emacs-and-vim/
; make "kj" behave as ESC key ,adapted from http://permalink.gmane.org/gmane.emacs.vim-emulation/684
; you can easily change it to map "jj" or "kk" or "jk" to ESC)
(defun escape-if-next-char (c)
    "Watches the next letter.  If c, then switch to Evil's normal mode; otherwise insert a k and forward unpressed key to unread-command events"
      (self-insert-command 1)
        (let ((next-key (read-event)))
              (if (= c next-key)
                        (progn
                                    (delete-backward-char 1)
                                              (evil-esc))
                              (setq unread-command-events (list next-key)))))
 
(defun escape-if-next-char-is-j (arg)
    (interactive "p")
      (if (= arg 1)
              (escape-if-next-char ?j)
                  (self-insert-command arg)))
 
(define-key evil-insert-state-map (kbd "k") 'escape-if-next-char-is-j)


(setq evil-leader/leader "\\"
      evil-leader/in-all-states t)
(require 'evil-leader)

(evil-leader/set-key
  "w" 'save-buffer
  "W" 'save-some-buffers
  "k" 'kill-current-buffer
  "K" 'kill-buffer-and-window
  "g" 'magit-status
  "m" 'compile
  "be" 'ibuffer
  "h" 'helm-mini
  "a" 'git-blame-mode
  "f" 'grep
  "d" 'dired-jump)

(provide 'setup-evil-mode)
