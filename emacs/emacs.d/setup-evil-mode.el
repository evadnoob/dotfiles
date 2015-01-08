(require 'evil)
(evil-mode 1)

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


(provide 'setup-evil-mode)
