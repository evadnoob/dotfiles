;;; setup-copy-and-paste.el ---


(setq select-active-regions nil)
(setq mouse-drag-copy-region t)
(global-set-key [mouse-2] 'mouse-yank-at-click)

(provide 'setup-copy-and-paste)
