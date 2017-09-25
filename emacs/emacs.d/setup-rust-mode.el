;; (unless (getenv "RUST_SRC_PATH")
;;   (setenv "RUST_SRC_PATH" (expand-file-name "~/projects/rust/src")))

;;(setenv "PATH" (concat (expand-file-name "~/.cargo/bin") (getenv "PATH")))

(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))


(setq racer-cmd "/home/david/.cargo/bin/racer")
(add-to-list 'load-path "~/projects/racer/editors/emacs")

(eval-after-load "rust-mode" '(require 'racer))
(eval-after-load "rust-mode" '(require 'company))
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'rust-mode-hook #'racer-activate)

(require 'rust-mode)
;;(define-key rust-mode-map (kbd "TAB") #'racer-complete-or-indent)
;;(define-key rust-mode-map (kbd "M-.") #'racer-find-definition)

(add-hook 'racer-mode-hook #'company-mode)

(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common) ;
(setq company-tooltip-align-annotations t)

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
  

(defun my-rust-mode-hook()

  ;; (linum-relative-on)
  ;; (linum-mode 1))
  ;;(linum-relative-mode)
  
  (company-mode 1)

  (add-hook 'racer-mode-hook #'company-mode)

  (global-set-key (kbd "TAB") #'company-indent-or-complete-common) ;
  (setq company-tooltip-align-annotations t)

  (racer-activate)

  ;; Hook in racer with eldoc to provide documentation
  (racer-turn-on-eldoc)

  ;; Use flycheck-rust in rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)

  ;; Use company-racer in rust mode
  (set (make-local-variable 'company-backends) '(company-racer))

  ;; Key binding to jump to method definition
  (local-set-key (kbd "M-.") #'racer-find-definition))


(add-hook 'rust-mode-hook 'my-rust-mode-hook)

(provide 'setup-rust-mode)
