;;; dmbbliss-theme.el --- an Emacs 24 theme based on Bliss (tmTheme)
;;
;;; Author: Jason Milkins
;; Version: 20141115.2301
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
 '(region  ((t (:background "#000080" foreground "#080808"))))
 '(cursor  ((t (:background "yellow"))))

 ;; Temporary defaults
 '(linum                               ((t (:foreground "#3b3c3c"  :background "#2a2a2a" ))))
 '(fringe                              ((t (                       :background "#2a2a2a" ))))

 '(minibuffer-prompt                   ((t (:foreground "#1278A8"  :background nil       :weight bold                                  ))))
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

 '(isearch                             ((t (:foreground "#99ccee"  :background "#444444" ))))
 '(isearch-fail                        ((t (                       :background "#ffaaaa" ))))
 '(lazy-highlight                      ((t (                       :background "#77bbdd" :foreground "black" ))))
 '(match                               ((t (                       :background "#3388cc" ))))

 '(tooltip                             ((t (:foreground "black"    :background "LightYellow" :inherit (variable-pitch)                 ))))

 '(js3-function-param-face             ((t (:foreground "#BFC3A9"                                                                      ))))
 '(js3-external-variable-face          ((t (:foreground "#F0B090"  :bold t                                                             ))))

 '(secondary-selection                 ((t (                       :background "#342858"                                               ))))
 '(cua-rectangle                       ((t (:foreground "#E0E4CC"  :background "#342858" ))))

 ;; Magit hightlight
 '(magit-item-highlight                ((t (:foreground "white" :inherit nil ))))
 '(markdown-header-face-2              ((t (:background nil :foreground "yellow"))))
 '(markdown-header-face-1              ((t (:background nil :foreground "white" :weight bold))))
 '(magit-section-highlight             ((t (:background nil :foreground "white" :weight bold))))


 ;; flyspell-mode
 '(flyspell-incorrect                  ((t (:underline nil :background "#AA0000" :inherit nil ))))
 '(flyspell-duplicate                  ((t (:underline "#009945" :background nil :inherit nil ))))

 ;; flymake-mode
 '(flymake-errline                     ((t (:underline "#AA0000" :background nil :inherit nil ))))
 '(flymake-warnline                    ((t (:underline "#009945" :background nil :inherit nil ))))

 ;;git-gutter
 '(git-gutter:added                    ((t (:foreground "#609f60" :bold t))))
 '(git-gutter:modified                 ((t (:foreground "#3388cc" :bold t))))
 '(git-gutter:deleted                  ((t (:foreground "#cc3333" :bold t))))

 '(diff-added                          ((t (:foregoround "#305030"))))
 '(diff-removed                        ((t (:foreground "#903010"))))
 '(diff-file-header                    ((t (:foreground "#362145" :background nil :inherit nil))))
 '(diff-context                        ((t (:foreground "grey60"))))
 '(diff-changed                        ((t (:foreground "#3388cc" :background nil))))
 '(diff-hunk-header                    ((t (:foreground "#ffffff"))))

 '(which-func                          ((t (:foreground "green" :bold nil))))

 '(font-lock-comment-face ((t (:foreground "grey55"  ))))
 '(font-lock-constant-face ((t (:foreground "#dadada"  ))))
 '(font-lock-variable-name-face ((t (:foreground "#767676"  ))))
 '(font-lock-builtin-face ((t (:foreground "#gray55"  ))))
 '(font-lock-type-face ((t (:foreground "#a8a8a8"  ))))
 '(font-lock-string-face ((t (:foreground "green"  ))))
 ;;'(font-lock-function-name-face ((t (:foreground "#3bb1df"  ))))
 ;;'(font-lock-function-name-face ((t (:foreground "#5fafff"  ))))
 '(font-lock-function-name-face ((t (:foreground "#d7ffff"  ))))
 '(font-lock-preprocessor-face ((t (:foreground "#5f8787"  ))))
 '(font-lock-keyword-face ((t (:foreground "#ff00ff"  ))))
 '(font-lock-warning-face ((t (:foreground "#4f6d82"  ))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#585858"  ))))
 ;;
 ;; Company
 '(company-tooltip ((t (:foreground "#585858" :background nil))))
 '(company-tooltip-annotation ((t (:foreground "green" :background nil))))
 '(company-scrollbar-bg ((t (:background nil))))

 ;; Ensime
 '(ensime-errline-highlight ((t (:background "#AA0000"))))
 
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
