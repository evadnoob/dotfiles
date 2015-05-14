;;git clone git://jblevins.org/git/markdown-mode.git


;;     (autoload 'markdown-mode "markdown-mode"
;;        "Major mode for editing Markdown files" t)
;;     (add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
;;     (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
;;     (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))


(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

(require 'markdown-mode)

