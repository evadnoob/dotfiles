;;; keybinding
(defun curtis/set-key (map spec cmd)
  "Set in `map' `spec' to `cmd'.
`Map' may be `'global' `'local' or a keymap.
A `spec' can be a `read-kbd-macro'-readable string or a vector."
  (let ((setter-fun (case map
                      (global #'global-set-key)
                      (local  #'local-set-key)
                      (t      (lambda (key def) (define-key map key def)))))
        (key (typecase spec
               (vector spec)
               (string (read-kbd-macro spec))
               (t (error "wrong argument")))))
    (funcall setter-fun key cmd)))

(defmacro defkeymap (symbol &rest mappings)
  "Define keymap bound to `symbol'.
See `pour-mappings-to'"
  `(progn (unless (boundp ',symbol)
            (defvar ,symbol (make-sparse-keymap)))
          (fill-keymap ,symbol ,@mappings)))

(defun fill-keymap (keymap &rest mappings)
  "Fill `KEYMAP' with `MAPPINGS'.
See `pour-mappings-to'."
  (pour-mappings-to keymap mappings))

(defun fill-keymaps (keymaps &rest mappings)
  "Fill `KEYMAPS' with `MAPPINGS'.
See `pour-mappings-to'."
  (dolist (keymap keymaps keymaps)
    (let ((map (if (symbolp keymap)
                   (symbol-value keymap)
                 keymap)))
      (pour-mappings-to map mappings))))

(defmacro gen-fill-keymap-hook (keymap &rest mappings)
  "Build fun that fills `KEYMAP' with `MAPPINGS'.
See `pour-mappings-to'."
  `(lambda () (fill-keymap ,keymap ,@mappings)))

(defmacro gen-local-fill-keymap-hook (&rest mappings)
  "Build fun that fills local keymap with `MAPPINGS'.
See `pour-mappings-to'."
  `(lambda () (fill-keymap 'local ,@mappings)))

(defun pour-mappings-to (map mappings)
  "Calls `curtis/set-key' with `map' on every key-fun pair in `MAPPINGS'.
`MAPPINGS' is a list of string-fun pairs, with a `READ-KBD-MACRO'-readable string and a interactive-fun."
  (dolist (mapping (group mappings 2))
    (curtis/set-key map (car mapping) (cadr mapping)))
  map)

(defun group (lst n)
  "Group `LST' into portions of `N'."
  (let (groups)
    (while lst
      (push (take n lst) groups)
      (setq lst (nthcdr n lst)))
    (nreverse groups)))

(defun take (n lst)
  "Return atmost the first `N' items of `LST'."
  (let (acc '())
    (while (and lst (> n 0))
      (decf n)
      (push (car lst) acc)
      (setq  lst (cdr lst)))
    (nreverse acc)))

(provide 'setup-utils)
