
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (replace-regexp-in-string
                          "[ \t\n]*$"
                          ""
                          (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq eshell-path-env path-from-shell) ; for eshell users
    (setq exec-path (split-string path-from-shell path-separator))))

(when window-system (set-exec-path-from-shell-PATH))


(setenv "GOPATH" "/home/david/projects/go")
(setenv "PATH" (concat "/home/david/projects/go/bin" ":" (getenv "PATH"))) 
(setq exec-path (append exec-path (list (expand-file-name "~/projects/go/bin"))))

;; (custom-set-variables
;;  '(ac-go-expand-arguments-into-snippets t))
 
;;(require 'linum-relative)

(defun my-go-mode-hook ()
  (message "in go-mode-hook")
 ;; (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-*") 'pop-tag-mark)
  ;;(linum-relative-mode)
  (rainbow-delimiters-mode-enable)
  (beacon-mode 1)
  (setq tab-width 2)
  (flycheck-mode 1)
  (annoying-arrows-mode 1)
  ;;(toggle-display-line-numbers)
  (setq display-line-numbers 'relative)
 ;;(setq display-line-numbers t)
  (set (make-local-variable 'company-backends) '(company-go))

 ;; Use goimports instead of go-fmt
  (setq gofmt-command "goimports")
 :; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  
 ;; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build"))

  ;;(define-key normal evil-normal-state-map (kbd "M-.") 'godef-jump) 
  (subword-mode 1)
  (glasses-mode 1)
  
  (custom-set-variables
   '(glasses-separator "")
   '(glasses-face "bold")
   '(glasses-original-separator "")
   '(glasses-separate-parentheses-p nil))
  
  ;;(eldoc-mode)
  (go-eldoc-setup)
  (company-mode)

  (use-package go-snippets
    :ensure t
    :init
    ;;(setq go-snippets-dir "~/projects/yasnippet-golang")
    )

  ;;(add-to-list 'yas-snippet-dirs "/home/david/projects/yasnippet-golang")
  (yas-minor-mode-on)
  
  ;; Go Guru
  (require 'go-guru)

  ;; godoctor - refactoring
  (require 'godoctor)

  ;;(enable-paredit-mode)
 
  
  (message "my-go-mode-hook done "))


(add-hook 'go-mode-hook 'my-go-mode-hook)

(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'go-mode-hook #'go-guru-hl-identifier-mode)

;;
;; setup nsf/gocode/autocomplete
;;

(add-to-list 'load-path "~/projects/go/src/github.com/nsf/gocode/emacs")
;;(add-to-list 'load-path "~/projects/go/src/github.com/nsf/gocode/emacs-company")
;; (require 'go-autocomplete)
;; (require 'auto-complete-config)

;; (ac-config-default)
;; (defun auto-complete-for-go ()
;; (auto-complete-mode 1))
;; (add-hook 'go-mode-hook 'auto-complete-for-go)


;;
;; setup goflymake
;; https://github.com/dougm/goflymake

;; (add-to-list 'load-path "~/projects/go/src/github.com/dougm/goflymake")
;; (require 'go-flymake)

(add-to-list 'load-path "~/projects/go/src/github.com/dougm/goflymake")
(require 'go-flycheck)



(use-package projectile :ensure t)
(use-package go-projectile :ensure t)

(use-package flycheck-gometalinter
  :ensure t
  :config
  (progn
    (flycheck-gometalinter-setup)))

(provide 'setup-golang)

