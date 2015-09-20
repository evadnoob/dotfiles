(unless (getenv "RUST_SRC_PATH")
  (setenv "RUST_SRC_PATH" (expand-file-name "~/Projects/rust/src")))

(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(setq racer-cmd "~/Projects/racer/target/release/racer")
(add-to-list 'load-path "~/Projects/racer/editors/emacs")

(eval-after-load "rust-mode" '(require 'racer))
(eval-after-load "rust-mode" '(require 'company))
(add-hook 'rust-mode-hook #'racer-activate)

(require 'rust-mode)
(define-key rust-mode-map (kbd "TAB") #'racer-complete-or-indent)
(define-key rust-mode-map (kbd "M-.") #'racer-find-definition)

(defun my-rust-mode-hook()

  (company-mode 1)

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

(custom-set-variables
 '(racer-cmd "/Users/daveboon/Projects/racer/target/release/racer"))

(provide 'setup-rust-mode)
