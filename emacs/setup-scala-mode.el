;;
;; setup scala mode and ensime mode
;;
;; (add-to-list 'load-path (*emacs ".emacs.x/.emacs.p/scala-mode2/"))
;; (require 'scala-mode2)

;; (unless (package-installed-p 'scala-mode2)
;;   (package-refresh-contents) (package-install 'scala-mode2))

;; (setq auto-mode-alist (cons '("\\.scala" . scala-mode) auto-mode-alist))
;; ;; set the first element of a list: (setcar auto-mode-alist '("\\.scala" . scala-mode))

(add-hook 'scala-mode-hook 'ensime-mode)

(require 'scala-mode)
(require 'company)

;; load the ensime lisp code...
(add-to-list 'load-path "~/projects/ensime-emacs/")
(require 'ensime)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)


;;(setq yas/my-directory (*emacs ".emacs.x/.emacs.p/scala-mode/contrib/yasnippet/snippets"))
;;(yas/load-directory yas/my-directory)


;; OPTIONAL
;; there are some great Scala yasnippets, browse through:
;; https://github.com/AndreaCrotti/yasnippet-snippets/tree/master/scala-mode
(add-hook 'scala-mode-hook #'yas-minor-mode)

;; but company-mode / yasnippet conflict. Disable TAB in company-mode with
(define-key company-active-map [tab] nil)
;;(define-key scala-mode [tab] 'ensime-)

(custom-set-variables
 '(company-tooltip-minimum-width 100))

;; echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
;; sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
;; sudo apt-get update
;; sudo apt-get install sbt

(provide 'setup-scala-mode)

