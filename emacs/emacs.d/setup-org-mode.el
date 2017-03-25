
(require 'org)

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

(custom-set-variables
 '(auto-insert 'other)
 '(auto-insert-directory "~/dotfiles/emacs/auto-insert-templates/")
 '(org-directory "~/Dropbox/org-mode-files") 
 '(org-src-fontify-natively t))

;;
;; load my notes file and my todo file
;; put it last and put point at end of file.
;;
(defvar dropbox-location "f:/Dropbox")

(if is-darwin
    (setq dropbox-location "~/Dropbox"))

(defvar files-to-load 
  nil "files to load at startup" )

(setq files-to-load (list (concat dropbox-location "/.notes." system-name  "/notes") (concat dropbox-location "/.notes." system-name "/todo")))

(dolist (f files-to-load)
  (when (file-exists-p f)
    (find-file-noselect f)
    ;;i don't like that notes.txt is always the most recently opened file.
    (setq filename-history (delete f file-name-history))))


(setq org-capture-templates
      (quote (
              ("n" "note" entry (file+datetree "~/Dropbox/org-mode-files/reference.org")
               "* %?\nEntered on %U\n  %i"))))
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca l" 'org-agenda-list)
(add-hook 'find-file-hooks 'auto-insert)
(load-library "autoinsert")
(setq auto-insert-directory "~/dotfiles/emacs/auto-insert-templates/")
;;( setq auto-insert-alist
 ;;      (append '((sgml-mode .  "org-mode-header.org"))
 ;;              auto-insert-alist))

(add-to-list 'auto-insert-alist '(("\\.\\([Hh]\\|hh\\|org\\|hxx\\|h\\+\\+\\)\\'" . "org-mod header")
     (replace-regexp-in-string
      "[^A-Z0-9]" "_"
      (replace-regexp-in-string
       "\\+" "P"
       (upcase (file-name-nondirectory buffer-file-name))))
"#-*- mode: org -*-" \n
"#+STARTUP: indent hidestars content" \n 
  ))

(require 'org-evil)


;;(add-hook 'org-mode-hook 'my-org-mode-hook)

(evil-define-key 'normal org-mode-map (kbd "<tab>") #'org-cycle)

(add-to-list 'load-path "~/projects/org-bullets")
(load-file "~/projects/org-bullets/org-bullets-with-patch.el")


;; Redefine a face from org-faces.el                                                                                                           
(defface org-hide
  '((((background light)) (:foreground "color-231"))
    (((background dark)) (:foreground "black")))
  "Face used to hide leading stars in headlines.                                                                                               
           The foreground color of this face should be 
           equal to the background color of the frame."
  :group 'org-faces)


(use-package org-journal :ensure t
  :init
  (setq org-journal-dir "~/Dropbox/org-mode-files"))

(provide 'setup-org-mode)
