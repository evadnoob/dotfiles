



(defun my-after-frame-function ()
  ""
  (message "in my after frame function"))

(add-hook 'after-make-frame-functions 'my-after-frame-function)
