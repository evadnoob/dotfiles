;;; setup-copy-and-paste.el ---


;; use clipboard mode:
(custom-set-variables
 '(save-interprogram-paste-before-kill t)
  '(select-enable-clipboard t)
  '(select-enable-primary nil)
  ;;'(select-active-regions 'only)
  ;;'(mouse-drag-copy-region t)i
  )

;;(global-set-key [mouse-2] 'mouse-yank-at-click)

;; (defun boon/cut-function (text &optional rest)
;;   (let ((process-connection-type nil))
;;     (let ((proc (start-process "xclip" "*Messages*" "xclip")))
;;       (process-send-string proc text)
;;       (process-send-eof proc))))

;; (defun boon/paste-function ()
;;   (shell-command-to-string "xclip -o"))

;; (setq x-select-enable-clipboard t)
;; (setq interprogram-paste-function 'x-cut-buffer-or-selection-value)
;; ;; (setq interprogram-cut-function 'x-select-text)

;;(setq interprogram-paste-function 'boon/cut-function)
;;(setq interprogram-cut-function 'boon/cut-function)

;; ;; use clipboard mode:
;; (custom-set-variables
;;  '(save-interprogram-paste-before-kill t)
;;  '(select-enable-clipboard t)
;;  '(select-enable-primary t))


;; ;; use primary selection mode:
;; (custom-set-variables
;;  '(x-select-enable-clipboard nil)
;;  '(x-select-enable-primary  t)
;;  '(mouse-drag-copy-region t))

;; (setq interprogram-paste-function 'gui-selection-value)
;; (setq interprogram-cut-function 'gui-select-text)


;;(global-set-key (kbd "M-w") 'clipboard-kill-ring-save)
;;(global-set-key (kbd "C-y") 'clipboard-yank)

;;(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

(provide 'setup-copy-and-paste)
