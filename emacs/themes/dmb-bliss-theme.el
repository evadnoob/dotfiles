;;; dmb-bliss-theme.el --- an Emacs 24 theme based on Bliss (tmTheme)
;
;;; Author: David Boon
;;; Version: 20141115.2301
;;; X-Original-Version: 201

;;; Sublime Text Theme Author: Saad Quadri
;;; Url: https://github.com/emacsfodder/tmtheme-to-deftheme
;;; Package-Requires: ((emacs "24.0"))
;;
;;; Commentary:
;;  This theme was automatically generated by tmtheme-to-deftheme (tm2deftheme),
;;  from Dmb-Bliss (tmTheme) by Saad Quadri
;;
;;; Code:

(deftheme dmb-bliss
  "dmb-bliss-theme - Created by tmtheme-to-deftheme - 2014-11-16 10:25:42 +0800")

(custom-theme-set-variables
 'dmb-bliss
)

(custom-theme-set-faces
 'dmb-bliss
 ;; basic theming.
 
 ;;'(default ((t (:foreground "#C5C8C6" :background "color-16" ))))
 ;;'(region  ((t (:background "color-16" foreground "#080808"))))
 '(region  ((t (:background "#afffff" :foreground "#000"))))
 '(cursor  ((t (:background "yellow"))))

 ;; Temporary defaults
 '(linum                               ((t (:foreground "#9ca19e"  :background nil ))))
 '(fringe                              ((t (                       :background nil ))))

 ;;'(minibuffer-prompt                   ((t (:foreground "#1278A8"  :background nil       :weight bold                                  ))))
 ;;'(minibuffer-prompt                   ((t (:foreground "#E8D391"  :background nil       :weight bold                                  ))))
 '(minibuffer-prompt                   ((t (:foreground "#d7ffff"  :background nil       :weight bold                                  ))))
 '(escape-glyph                        ((t (:foreground "orange"   :background nil                                                     ))))
 '(highlight                           ((t (:foreground "orange"   :background nil                                                     ))))
 '(shadow                              ((t (:foreground "#777777"  :background nil                                                     ))))

 '(trailing-whitespace                 ((t (:foreground "#FFFFFF"  :background "#C74000"                                               ))))
 '(link                                ((t (:foreground "#00b7f0"  :background nil       :underline t                                  ))))
 '(link-visited                        ((t (:foreground "#4488cc"                        :underline t :inherit (link)                  ))))
 '(button                              ((t (:foreground "#FFFFFF"  :background "#444444" :underline t :inherit (link)                  ))))
 '(next-error                          ((t (                                             :inherit (region)                             ))))
 '(query-replace                       ((t (                                             :inherit (isearch)                            ))))
 '(header-line                         ((t (:foreground "#EEEEEE"  :background "#444444" :box nil :inherit (mode-line)                 ))))

 '(mode-line-highlight                 ((t (                                             :box nil                                      ))))
 '(mode-line-emphasis                  ((t (                                             :weight bold                                  ))))
 '(mode-line-buffer-id                 ((t (                                             :box nil :weight bold                         ))))

 '(mode-line-inactive                  ((t (:foreground "#9ca19e"  :background "#000000" :box nil :weight light :inherit (mode-line)   ))))
 '(mode-line                           ((t (:foreground "grey60"  :backgroundi  "#000000" :box nil )))) ;; #c5c8c6

 '(isearch                             ((t (:foreground "#000"  :background "#fff" ))))
 '(isearch-fail                        ((t (                       :background "#ffaaaa" ))))
 '(lazy-highlight                      ((t (                       :background "#777" :foreground "black" ))))
 '(match                               ((t (                       :background "#3388cc" ))))

 '(tooltip                             ((t (:foreground "black"    :background "LightYellow" :inherit (variable-pitch)                 ))))

 '(js3-function-param-face             ((t (:foreground "#BFC3A9"                                                                      ))))
 '(js3-external-variable-face          ((t (:foreground "#F0B090"  :bold t                                                             ))))

 '(secondary-selection                 ((t (                       :background "#342858"                                               ))))
 '(cua-rectangle                       ((t (:foreground "#E0E4CC"  :background "#342858" ))))

 ;; Magit hightlight
 '(magit-item-highlight                ((t (:foreground "white" :inherit nil ))))
 '(magit-header-line                   ((t (:foreground "white"))))
 '(magit-section-heading               ((t (:foreground "#a8a8a8" :weight bold))))
 '(magit-section-highlight             ((t (:background nil :foreground "white" :weight bold))))
 '(magit-filename                      ((t (:foreground "white"))))
 '(magit-diff-file-heading-highlight   ((t (:foreground "white" :weight normal))))
 '(magit-diff-context-highlight        ((t (:background nl))))
 '(magit-diff-removed-highlight        ((t (:foreground "#BF735E" :background nil))))
 '(magit-diff-added-highlight          ((t (:foreground "#5fd7af" :background nil))))
 '(magit-diff-our                      ((t (:foreground "#fff" :background nil))))
 '(magit-diff-their                    ((t (:foreground "#0000d7" :background nil))))
 '(magit-diff-added                    ((t (:foreground "green" :background nil))))
 '(magit-diff-removed                  ((t (:foreground "#875f00" :background nil))))
 '(magit-diff-hunk-heading             ((t (:foreground "#fff" :background "#080808" :overline nil :underline nil))))



 ;; flyspell-mode
 '(flyspell-incorrect                  ((t (:underline nil :background "#AA0000" :inherit nil ))))
 '(flyspell-duplicate                  ((t (:underline "#009945" :background nil :inherit nil ))))

 ;; flymake-mode
 '(flymake-errline                     ((t (:underline "#AA0000" :background nil :inherit nil ))))
 '(flymake-warnline                    ((t (:underline "#009945" :background nil :inherit nil ))))


 ;; flycheck
 '(flycheck-error                      ((t (:foreground "#ff0000"))))
 ;;git-gutter
 '(git-gutter:added                    ((t (:foreground "#609f60" :bold t))))
 '(git-gutter:modified                 ((t (:foreground "#3388cc" :bold t))))
 '(git-gutter:deleted                  ((t (:foreground "#cc3333" :bold t))))

 '(diff-added                          ((t (:foregoround "#305030"))))
 '(diff-removed                        ((t (:foreground "#903010"))))
 '(diff-file-header                    ((t (:foreground "#362145" :background nil :inherit nil))))
 '(diff-context                        ((t (:foreground "green"))))
 '(diff-changed                        ((t (:foreground "#3388cc" :background nil))))
 '(diff-hunk-header                    ((t (:foreground "#ffffff"))))

 '(which-func                          ((t (:foreground "green" :bold nil))))

 '(font-lock-comment-face ((t (:foreground "color-255"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "brightmagenta"))))
 '(font-lock-constant-face ((t (:foreground "#d7d7d7"  ))))
 '(font-lock-variable-name-face ((t (:foreground "#00ff00"  ))))
 '(font-lock-builtin-face ((t (:foreground "gray55"  ))))
 '(font-lock-type-face ((t (:foreground "#a8a8a8"  ))))
 '(font-lock-string-face ((t (:foreground "#b2b2b2"  ))))
 ;;'(font-lock-function-name-face ((t (:foreground "#3bb1df"  ))))
 ;;'(font-lock-function-name-face ((t (:foreground "#5fafff"  ))))
 ;;'(font-lock-function-name-face ((t (:foreground "#d7ffff"  ))))
;;'(font-lock-function-name-face ((t (:foreground "#3bb1df"  ))))
'(font-lock-function-name-face ((t (:foreground "color-151"  ))))
 '(font-lock-preprocessor-face ((t (:foreground "#5f8787"  ))))
 '(font-lock-keyword-face ((t (:foreground "#d7d7d7"  ))))
 '(font-lock-warning-face ((t (:foreground "yellow" ))))
 '(warning ((t (:foreground "yellow"))))
 
 ;;
 ;; Company
 '(company-tooltip ((t (:foreground "#585858" :background nil))))
 '(company-tooltip-annotation ((t (:foreground "green" :background nil))))
 '(company-scrollbar-bg ((t (:background nil))))

 ;; Ensime
 '(ensime-errline-highlight ((t (:background "#AA0000"))))

 ;; smerge
 '(smerge-mine ((t (:background "#3b3c3c"))))
 '(smerge-lower ((t (:foreground "white" :background "#53815E"))))
 '(smerge-upper ((t (:foreground "white" :background "#BF735E"))))
 
 '(smerge-markers ((t (:background nil))))
 '(smerge-other ((t (:background "gray" :foreground "black" ))))
 '(smerge-refined-added ((t (:foreground "black" :background "green"))))
 
 ;; markdown
 '(markdown-header-face-2              ((t (:background nil :foreground "yellow"))))
 '(markdown-header-face-1              ((t (:background nil :foreground "white" :weight bold))))
 '(markdown-pre-face                  ((t (:foreground "#87d7af"))))
 '(markdown-inline-code-face          ((t (:foreground "green"))))
 `(markdown-markup-face               ((t (:foreground "#ffffff"))))

;; Rainbow delimiters
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#2a7d9d"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#2e89ad"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#3296bc"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#38a1ca"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#47a9ce"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#57b0d3"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "#67b7d7"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#77bfdb"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#86c6df"))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "#FF0000"))))


 ;;ediff
 '(ediff-fine-diff-A ((t (:background nil))))
 '(ediff-fine-diff-B ((t (:background nil))))

 ;; popup
 '(ac-selection-face ((t (:foregoround "#67b7d7"))))
 '(popup-face ((t (:foreground "#777777"))))
 
 ;; ac-complete

 ;; evil
 '(evil-search-highlight-persist-highlight-face ((t (:background "#5f5f00" :foreground "black"))))


 ;;shell-script
 '(sh-heredoc ((t (:foreground "#5f5f00"))))


 ;; go-guru/go-mode
 '(go-guru-hl-identifier-face ((t (:foregoround "#47a9ce"))))

 ;; glasses-mode
 '(glasses-face ((t (:foreground "green"))))


 ;; org-mode
 '(org-link ((t (:foreground "green" underline: t))))
 '(org-table ((t (:foreground "#E0E4CC" ))))
 '(org-hide ((t (:foregoround "#131516"))))

 '(beacon-fallback-background ((t :background "yellow")))
 ;;'(line-number-current-line ((t :background "#BFB85E" :foreground "#000000" )))
 '(line-number-current-line ((t :background "#709FF4" :foreground "#ffffff" )))
) ;; End face definitions

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'dmb-bliss)

;; Local Variables:
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; dmb-bliss-theme.el ends here
