(require 'org)

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

(custom-set-variables
 '(org-directory "~/Dropbox/org-mode-files"))

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


(provide 'setup-org-mode)
