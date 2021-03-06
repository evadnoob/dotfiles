(deftheme zerodark
  "Created 2017-07-06.")

(custom-theme-set-variables
 'zerodark
 '(ansi-color-names-vector ["#333333" "#ff5f5f" "#87af5f" "#d7875f" "#5fafff" "#d787d7" "#005f87" "#afafaf"]))

(custom-theme-set-faces
 'zerodark
 '(cursor ((((class color) (min-colors 89)) (:background "#afafaf"))))
 '(fringe ((((class color) (min-colors 89)) (:background "#222222" :foreground "#707070"))))
 '(border ((((class color) (min-colors 89)) (:foreground "#5f5f5f"))))
 '(vertical-border ((((class color) (min-colors 89)) (:foreground "#5f5f5f"))))
 '(highlight ((((class color) (min-colors 89)) (:background "#5f5f5f" :foreground "#afafaf" :underline nil))))
 '(region ((((class color) (min-colors 89)) (:background "#5f5f5f" :foreground "#afafaf"))))
 '(secondary-selection ((((class color) (min-colors 89)) (:background "#5f5f5f" :foreground "#afafaf"))))
 '(isearch ((((class color) (min-colors 89)) (:background "#d7af87" :foreground "#5f5f5f"))))
 '(lazy-highlight ((((class color) (min-colors 89)) (:background "#666666" :foreground "#d7af87"))))
 '(hl-line ((((class color) (min-colors 89)) (:background "#333333" :underline unspecified :inherit nil))))
 '(match ((((class color) (min-colors 89)) (:background "#5f5f5f"))))
 '(font-lock-builtin-face ((((class color) (min-colors 89)) (:foreground "#5fafff" :weight bold))))
 '(font-lock-comment-face ((((class color) (min-colors 89)) (:foreground "#707070" :slant italic))))
 '(font-lock-constant-face ((((class color) (min-colors 89)) (:foreground "#d7875f" :weight bold))))
 '(font-lock-function-name-face ((((class color) (min-colors 89)) (:foreground "#5fafff"))))
 '(font-lock-keyword-face ((((class color) (min-colors 89)) (:foreground "#d787d7" :weight bold))))
 '(font-lock-string-face ((((class color) (min-colors 89)) (:foreground "#87af5f"))))
 '(font-lock-doc-face ((((class color) (min-colors 89)) (:foreground "#afaf87"))))
 '(font-lock-type-face ((((class color) (min-colors 89)) (:foreground "#5fafff"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 89)) (:foreground "#5fafff"))))
 '(font-lock-warning-face ((((class color) (min-colors 89)) (:foreground "#ff5f5f" :weight bold :background "#5f5f5f"))))
 '(mode-line ((((class color) (min-colors 89)) (:background "#444444" :height 0.9 :foreground "#5fafff" :box (:line-width 6 :color "#444444")))))
 '(mode-line-inactive ((((class color) (min-colors 89)) (:background "#222222" :height 0.9 :foreground "#afafaf" :box (:line-width 6 :color "#222222")))))
 '(header-line ((((class color) (min-colors 89)) (:inherit mode-line-inactive))))
 '(error ((((class color) (min-colors 89)) (:foreground "#ff5f5f" :weight bold))))
 '(warning ((((class color) (min-colors 89)) (:foreground "#d7875f" :weight bold))))
 '(success ((((class color) (min-colors 89)) (:foreground "#87af5f" :weight bold))))
 '(message-mml ((((class color) (min-colors 89)) (:foreground "#707070"))))
 '(org-mode-line-clock ((((class color) (min-colors 89)) (:background unspecified (:inherit mode-line)))))
 '(minibuffer-prompt ((((class color) (min-colors 89)) (:foreground "#5fafff" :weight bold))))
 '(escape-glyph ((((class color) (min-colors 89)) (:foreground "#5fafff" :weight bold))))
 '(link ((((class color) (min-colors 89)) (:foreground "#5fafff" :underline t))))
 '(link-visited ((((class color) (min-colors 89)) (:foreground "#5fafff" :underline t))))
 '(widget-field ((((class color) (min-colors 89)) (:background "#5f5f5f" :box (:line-width 1 :color "#707070")))))
 '(widget-button ((((class color) (min-colors 89)) (:inherit link))))
 '(custom-button ((((class color) (min-colors 89)) (:background "#5f5f5f" :box (:line-width 2 :style released-button)))))
 '(custom-button-mouse ((((class color) (min-colors 89)) (:background "#5f5f5f" :box (:line-width 2 :style released-button)))))
 '(custom-button-pressed ((((class color) (min-colors 89)) (:background "#5f5f5f" :box (:line-width 2 :style pressed-button)))))
 '(custom-group-tag ((((class color) (min-colors 89)) (:foreground "#d787d7" :weight bold :height 1.4))))
 '(custom-variable-tag ((((class color) (min-colors 89)) (:foreground "#d787d7" :weight bold))))
 '(custom-state ((((class color) (min-colors 89)) (:foreground "#87af5f"))))
 '(compilation-info ((((class color) (min-colors 89)) (:foreground "#d787d7" :weight bold))))
 '(compilation-warning ((((class color) (min-colors 89)) (:foreground "#d7875f" :weight bold))))
 '(compilation-error ((((class color) (min-colors 89)) (:foreground "#ff5f5f" :weight bold))))
 '(compilation-line-number ((((class color) (min-colors 89)) (:foreground "#87af5f" :weight bold))))
 '(compilation-mode-line-exit ((((class color) (min-colors 89)) (:foreground "#87af5f" :weight bold :inverse-video nil))))
 '(compilation-mode-line-run ((((class color) (min-colors 89)) (:foreground "#d7875f" :weight bold))))
 '(compilation-mode-line-fail ((((class color) (min-colors 89)) (:foreground "#ff5f5f" :weight bold))))
 '(dired-header ((((class color) (min-colors 89)) (:foreground "#5fafff" :background "#444444" :weight bold))))
 '(dired-directory ((((class color) (min-colors 89)) (:foreground "#d787d7" :weight bold))))
 '(diff-removed ((((class color) (min-colors 89)) (:background "#5f5f5f" :foreground "#ff5f5f"))))
 '(diff-added ((((class color) (min-colors 89)) (:background "#5f5f5f" :foreground "#87af5f"))))
 '(diff-hunk-header ((((class color) (min-colors 89)) (:background "#444444" :weight bold :foreground "#5fafff"))))
 '(diff-file-header ((((class color) (min-colors 89)) (:weight bold))))
 '(diff-header ((((class color) (min-colors 89)) (:background "#333333" :foreground "#5fafff"))))
 '(diff-context ((((class color) (min-colors 89)) (:foreground "#afafaf"))))
 '(diff-refine-added ((((class color) (min-colors 89)) (:foreground "#87af5f" :background "#3f6d54"))))
 '(diff-refine-removed ((((class color) (min-colors 89)) (:background "#744a5b" :foreground "#ff5f5f"))))
 '(magit-diff-context-highlight ((((class color) (min-colors 89)) (:background "#222222"))))
 '(magit-diff-file-heading ((((class color) (min-colors 89)) (:weight bold :foreground "#5fafff"))))
 '(magit-diff-file-heading-highlight ((((class color) (min-colors 89)) (:weight bold :foreground "#5fafff" :background "#444444"))))
 '(magit-diff-removed-highlight ((((class color) (min-colors 89)) (:inherit diff-removed))))
 '(magit-diff-removed ((((class color) (min-colors 89)) (:inherit diff-removed))))
 '(magit-diff-added-highlight ((((class color) (min-colors 89)) (:inherit diff-added))))
 '(magit-diff-added ((((class color) (min-colors 89)) (:inherit diff-added))))
 '(magit-diff-lines-heading ((((class color) (min-colors 89)) (:background "#005f87" :foreground "white"))))
 '(magit-diff-hunk-heading-highlight ((((class color) (min-colors 89)) (:background "#005f87"))))
 '(magit-diff-hunk-heading ((((class color) (min-colors 89)) (:background "#5f5f5f"))))
 '(magit-process-ok ((((class color) (min-colors 89)) (:foreground "#87af5f" :weight bold))))
 '(magit-section-highlight ((((class color) (min-colors 89)) (:background "#222222"))))
 '(magit-section-heading ((((class color) (min-colors 89)) (:foreground "#cccccc" :weight bold))))
 '(magit-branch-current ((((class color) (min-colors 89)) (:foreground "#5fafff" :background "#222222" :box 1))))
 '(magit-branch-local ((((class color) (min-colors 89)) (:foreground "#d787d7" :background "#222222" :box 1))))
 '(magit-branch-remote ((((class color) (min-colors 89)) (:foreground "#87af5f" :background "#222222" :box 1))))
 '(magit-reflog-reset ((((class color) (min-colors 89)) (:background "#5f5f5f" :foreground "#ff5f5f" :weight bold))))
 '(magit-reflog-amend ((((class color) (min-colors 89)) (:background "#444444" :foreground "#5fafff" :weight bold))))
 '(magit-reflog-rebase ((((class color) (min-colors 89)) (:background "#444444" :foreground "#5fafff" :weight bold))))
 '(magit-reflog-commit ((((class color) (min-colors 89)) (:background "#5f5f5f" :foreground "#87af5f" :weight bold))))
 '(magit-reflog-checkout ((((class color) (min-colors 89)) (:background "#5f5f5f" :foreground "#d7875f" :weight bold))))
 '(magit-reflog-cherry-pick ((((class color) (min-colors 89)) (:background "#5f5f5f" :foreground "#d787d7" :weight bold))))
 '(magit-bisect-bad ((((class color) (min-colors 89)) (:background "#5f5f5f" :foreground "#ff5f5f" :box 1))))
 '(magit-bisect-good ((((class color) (min-colors 89)) (:background "#444444" :foreground "#5fafff" :box 1))))
 '(magit-blame-heading ((((class color) (min-colors 89)) (:foreground "#87af5f" :background "#5f5f5f" :box 1))))
 '(git-commit-summary ((((class color) (min-colors 89)) (:weight bold))))
 '(magit-tag ((((class color) (min-colors 89)) (:foreground "#d787d7" :weight bold :box 1 :background "#202020"))))
 '(magit-sequence-part ((((class color) (min-colors 89)) (:foreground "#d7875f" :weight bold))))
 '(magit-sequence-head ((((class color) (min-colors 89)) (:foreground "#87af5f" :weight bold))))
 '(message-header-name ((((class color) (min-colors 89)) (:foreground "#5fafff" :weight bold))))
 '(message-header-cc ((((class color) (min-colors 89)) (:foreground "#d787d7"))))
 '(message-header-other ((((class color) (min-colors 89)) (:foreground "#d787d7"))))
 '(message-header-subject ((((class color) (min-colors 89)) (:foreground "#87af5f"))))
 '(message-header-to ((((class color) (min-colors 89)) (:foreground "#d787d7"))))
 '(message-cited-text ((((class color) (min-colors 89)) (:foreground "#707070"))))
 '(message-separator ((((class color) (min-colors 89)) (:foreground "#ff5f5f" :weight bold))))
 '(ido-first-match ((((class color) (min-colors 89)) (:foreground "#d787d7" :weight bold))))
 '(ido-only-match ((((class color) (min-colors 89)) (:foreground "#d787d7" :weight bold))))
 '(ido-subdir ((((class color) (min-colors 89)) (:foreground "#5fafff"))))
 '(flycheck-fringe-error ((((class color) (min-colors 89)) (:foreground "#ff5f5f" :background "#5f5f5f" :weight bold :inverse-video t))))
 '(flycheck-fringe-warning ((((class color) (min-colors 89)) (:background "#5f5f5f" :foreground "#d7875f" :weight bold :inverse-video t))))
 '(flycheck-fringe-info ((((class color) (min-colors 89)) (:background "#444444" :foreground "#5fafff" :weight bold :inverse-video t))))
 '(flycheck-warning ((((class color) (min-colors 89)) (:underline (:color "#ff5f5f" :style wave)))))
 '(flycheck-error ((((class color) (min-colors 89)) (:underline (:color "#ff5f5f" :style wave)))))
 '(org-hide ((((class color) (min-colors 89)) (:foreground "#333333"))))
 '(org-todo ((((class color) (min-colors 89)) (:foreground "#ff5f5f" :background "#5f5f5f" :weight bold))))
 '(org-done ((((class color) (min-colors 89)) (:foreground "#5fafff" :background "#444444" :weight bold))))
 '(org-date ((((class color) (min-colors 89)) (:background "#5f5f5f"))))
 '(org-scheduled-previously ((((class color) (min-colors 89)) (:foreground "#ff5f5f"))))
 '(org-scheduled ((((class color) (min-colors 89)) (:foreground "#afafaf"))))
 '(org-upcoming-deadline ((((class color) (min-colors 89)) (:foreground "#d7875f"))))
 '(org-headline-done ((((class color) (min-colors 89)) (:foreground "#707070"))))
 '(outline-1 ((((class color) (min-colors 89)) (:foreground "#5fafff" :weight bold))))
 '(outline-2 ((((class color) (min-colors 89)) (:foreground "#d787d7" :weight bold))))
 '(outline-3 ((((class color) (min-colors 89)) (:foreground "PeachPuff3" :weight bold))))
 '(outline-4 ((((class color) (min-colors 89)) (:foreground "#afaf87" :weight bold))))
 '(outline-5 ((((class color) (min-colors 89)) (:foreground "#5fafff" :weight bold))))
 '(outline-6 ((((class color) (min-colors 89)) (:foreground "#d787d7" :weight bold))))
 '(outline-7 ((((class color) (min-colors 89)) (:foreground "PeachPuff3" :weight bold))))
 '(outline-8 ((((class color) (min-colors 89)) (:foreground "#afaf87" :weight bold))))
 '(org-agenda-date ((((class color) (min-colors 89)) (:foreground "#d787d7" :weight bold))))
 '(org-agenda-date-today ((((class color) (min-colors 89)) (:foreground "#5fafff" :weight bold :background "#444444" :box 1))))
 '(org-agenda-structure ((((class color) (min-colors 89)) (:foreground "#5fafff" :weight bold))))
 '(org-scheduled-today ((((class color) (min-colors 89)) (:foreground "#afafaf" :weight bold))))
 '(org-agenda-done ((((class color) (min-colors 89)) (:foreground "#707070"))))
 '(org-time-grid ((((class color) (min-colors 89)) (:foreground "#707070"))))
 '(org-column ((((class color) (min-colors 89)) (:background "#222222"))))
 '(org-column-title ((((class color) (min-colors 89)) (:background "#444444" :foreground "#5fafff" :weight bold))))
 '(org-block-begin-line ((((class color) (min-colors 89)) (:background "#5f5f5f" :foreground "#afaf87" :height 0.9))))
 '(org-block-end-line ((((class color) (min-colors 89)) (:background "#5f5f5f" :foreground "#afaf87" :height 0.9))))
 '(which-func ((((class color) (min-colors 89)) (:foreground "#d787d7"))))
 '(ivy-current-match ((((class color) (min-colors 89)) (:background "#5f5f5f" :weight bold :foreground "#d787d7"))))
 '(ivy-minibuffer-match-face-1 ((((class color) (min-colors 89)) (:foreground "#d7875f"))))
 '(ivy-minibuffer-match-face-2 ((((class color) (min-colors 89)) (:foreground "#87af5f"))))
 '(ivy-minibuffer-match-face-3 ((((class color) (min-colors 89)) (:foreground "#d7875f"))))
 '(ivy-minibuffer-match-face-4 ((((class color) (min-colors 89)) (:foreground "#87af5f"))))
 '(ivy-match-required-face ((((class color) (min-colors 89)) (:foreground "#ff5f5f" :background "#5f5f5f" :weight bold))))
 '(ivy-modified-buffer ((((class color) (min-colors 89)) (:foreground "#ff5f5f"))))
 '(ivy-remote ((((class color) (min-colors 89)) (:foreground "#5fafff"))))
 '(visible-mark-face1 ((((class color) (min-colors 89)) (:foreground "#d7af87" :inverse-video t))))
 '(visible-mark-face2 ((((class color) (min-colors 89)) (:foreground "PeachPuff3" :inverse-video t))))
 '(show-paren-match ((((class color) (min-colors 89)) (:background "#005f87"))))
 '(erc-nick-default-face ((((class color) (min-colors 89)) :foreground "#5fafff" :background "#444444" :weight bold)))
 '(erc-current-nick-face ((((class color) (min-colors 89)) :foreground "#ff5f5f" :weight bold :background "#5f5f5f")))
 '(erc-my-nick-face ((((class color) (min-colors 89)) :foreground "#ff5f5f" :weight bold :background "#5f5f5f")))
 '(erc-notice-face ((((class color) (min-colors 89)) :foreground "#707070")))
 '(erc-input-face ((((class color) (min-colors 89)) :foreground "#afafaf" :weight bold)))
 '(erc-prompt-face ((((class color) (min-colors 89)) :foreground "#d787d7" :background "#5f5f5f" :weight bold :box 1)))
 '(erc-timestamp-face ((((class color) (min-colors 89)) :foreground "#d787d7" :weight bold)))
 '(rainbow-delimiters-mismatched-face ((((class color) (min-colors 89)) :foreground "#ff5f5f" :weight bold :background "#5f5f5f")))
 '(rainbow-delimiters-unmatched-face ((((class color) (min-colors 89)) :foreground "#ff5f5f" :weight bold :background "#5f5f5f")))
 '(epa-validity-high ((((class color) (min-colors 89)) (:foreground "#87af5f"))))
 '(epa-validity-low ((((class color) (min-colors 89)) (:foreground "#afafaf"))))
 '(epa-validity-disabled ((((class color) (min-colors 89)) (:foreground "#ff5f5f" :weight bold :background "#5f5f5f"))))
 '(epa-field-name ((((class color) (min-colors 89)) (:foreground "#d787d7" :weight bold))))
 '(epa-field-body ((((class color) (min-colors 89)) (:foreground "#d7875f"))))
 '(default ((t (:background "black" :foreground "#afafaf")))))

(provide-theme 'zerodark)
