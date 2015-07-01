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


(provide 'setup-rust-mode)
