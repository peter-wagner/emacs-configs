;;; wacspace-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "wacs-configuration" "wacs-configuration.el"
;;;;;;  (22278 54809 0 0))
;;; Generated autoloads from wacs-configuration.el

(defvar wacs--frame-fns nil "\
The wacspace frame function alist.

Should not be altered manually—use `wacs-set-frame-fn' instead.")

(autoload 'wacs--push-config "wacs-configuration" "\
Given MODE and AUX-COND, push ENTRY with property name PROPNAME.

\(fn MODE AUX-COND ENTRY PROPNAME)" nil nil)

(autoload 'defwacspace "wacs-configuration" "\
Define a wacspace.

The CONDITION can either be a major mode (such as
`emacs-lisp-mode') or a (MAJOR-MODE AUXILIARY-CONDITION) pair.
The auxiliary condition can be a variable (such as a minor mode),
an inline lambda, or a (:fn FN) pair.  For full documentation of
CONFIGURATION options, see the README.

Some examples:

\(defwacspace python-mode
  ...)
-Default wacspace for `python-mode' buffers.

\(defwacspace  (ruby-mode rinari-minor-mode)
  ...)
-Activates in `ruby-mode' when `rinari-minor-mode' is turned on.

\(defwacspace (clojure-mode (lambda ()
                             (string-match \"test\" buffer-file-name)))
  ...)
-Activates in `clojure-mode' when \"test\" is in the buffer's file name.

\(defwacspace (java-mode (:fn is-enterprisy))
  ...)
-Activates in `java-mode' when function `is-enterprisy' evalutates to non-nil.

\(fn CONDITION &rest CONFIGURATION)" nil t)

(autoload 'defwacsalias "wacs-configuration" "\
Define a wacspace alias from CONDITION to TARGET-CONDITION.

When CONDITION is satisfied and `wacspace' is invoked, the
configuration for TARGET-CONDITION will be run.  For full details
of CONDITION and TARGET-CONDITION, see the docstring for
`defwacspace'

\(fn CONDITION TARGET-CONDITION)" nil t)

(autoload 'defwacsaliases "wacs-configuration" "\
Define multiple aliases for a mode.

CONDITIONS should be a list of conditions according to the rules
of `defwacspace'.  TARGET-CONDITION is the condition to alias to.

\(fn CONDITIONS TARGET-CONDITION)" nil t)

(autoload 'defwinconf "wacs-configuration" "\
Define a wacspace window configuration named CONF-NAME.

BODY is the body of a function to be run when the configuration
is run (e.g. a sequence of window splitting commands).  The
function need not stop with the original window active.

\(fn CONF-NAME &rest BODY)" nil t)

(autoload 'wacs-set-frame-fn "wacs-configuration" "\
Set the given FRAME parameter to FN.

FRAME and FN should be passed unquoted.

\(fn FRAME FN)" nil t)

;;;***

;;;### (autoloads nil "wacs-helper" "wacs-helper.el" (22278 54809
;;;;;;  0 0))
;;; Generated autoloads from wacs-helper.el

(autoload 'wacs-make-comint "wacs-helper" "\
Make a project-specific comint buffer.

Acts as a drop-in replacement for `make-comint' (with equivalent
arguments NAME, PROGRAM, STARTFILE, and SWITCHES).  For best
results, use within `defwacspace' configurations.

\(fn NAME PROGRAM &optional STARTFILE &rest SWITCHES)" t nil)

(autoload 'wacs-eshell "wacs-helper" "\
Open an eshell in the main project directory.

\(fn)" nil nil)

(autoload 'wacs-shell "wacs-helper" "\
Open a new shell in the main project directory.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "wacs-init" "wacs-init.el" (22278 54809 0 0))
;;; Generated autoloads from wacs-init.el

(autoload 'wacs-set-up-prefix "wacs-init" "\
Set up variable `wacs-prefix-map' with wacspace commands.

\(fn)" nil nil)

(autoload 'wacs-set-up-keys "wacs-init" "\
Set up C-z as a prefix with wacspace commands.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "wacs-interactive" "wacs-interactive.el" (22278
;;;;;;  54809 0 0))
;;; Generated autoloads from wacs-interactive.el

(autoload 'wacspace "wacs-interactive" "\
Set up your Emacs workspace.

If there is a saved configuration with numeric prefix ARG,
restore that.  Otherwise, set up your workspace based on your
wacspace configuration.  If called with universal prefix
arg (\\[universal-argument]), force reconfiguration even if there
is a saved workspace.

\(fn &optional ARG)" t nil)

(autoload 'wacspace-save "wacs-interactive" "\
Save the current window configuration with prefix ARG.

When wacspace is invoked in the future in any of the current
buffers with given prefix key, the current workspace will be
restored.

\(fn &optional ARG)" t nil)

(autoload 'wacspace-restore "wacs-interactive" "\
Restore a window configuration saved with prefix key ARG.

Usually, you should call `wacspace' directly instead of this
function unless you want to skip the possibility of
configuration.

\(fn &optional ARG)" nil nil)

;;;***

;;;### (autoloads nil nil ("wacs-util.el" "wacspace-pkg.el" "wacspace.el")
;;;;;;  (22278 54809 656838 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; wacspace-autoloads.el ends here
