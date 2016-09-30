;;; traad-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "traad" "traad.el" (22278 55093 0 0))
;;; Generated autoloads from traad.el

(autoload 'traad-open "traad" "\
Open a traad project on the files in DIRECTORY.

\(fn DIRECTORY)" t nil)

(autoload 'traad-close "traad" "\
Close the current traad project, if any.

\(fn)" t nil)

(autoload 'traad-running\? "traad" "\
Determine if a traad server is running.

\(fn)" t nil)

(autoload 'traad-display-task-status "traad" "\
Get the status of a traad task.

\(fn TASK-ID)" t nil)

(autoload 'traad-display-full-task-status "traad" "\


\(fn)" t nil)

(autoload 'traad-undo "traad" "\
Undo the IDXth change from the history. IDX is the position of an entry in the undo list (see: traad-history). This change and all that depend on it will be undone.

\(fn IDX)" t nil)

(autoload 'traad-redo "traad" "\
Redo the IDXth change from the history. IDX is the position of an entry in the redo list (see: traad-history). This change and all that depend on it will be redone.

\(fn IDX)" t nil)

(autoload 'traad-display-history "traad" "\
Display undo and redo history.

\(fn)" t nil)

(autoload 'traad-undo-info "traad" "\
Get info on the I'th undo history.

\(fn I)" t nil)

(autoload 'traad-redo-info "traad" "\
Get info on the I'th redo history.

\(fn I)" t nil)

(autoload 'traad-rename-current-file "traad" "\
Rename the current file/module.

\(fn NEW-NAME)" t nil)

(autoload 'traad-rename "traad" "\
Rename the object at the current location.

\(fn NEW-NAME)" t nil)

(autoload 'traad-normalize-arguments "traad" "\
Normalize the arguments for the method at point.

\(fn)" t nil)

(autoload 'traad-remove-argument "traad" "\
Remove the INDEXth argument from the signature at point.

\(fn INDEX)" t nil)

(autoload 'traad-extract-method "traad" "\
Extract the currently selected region to a new method.

\(fn NAME BEGIN END)" t nil)

(autoload 'traad-extract-variable "traad" "\
Extract the currently selected region to a new variable.

\(fn NAME BEGIN END)" t nil)

(autoload 'traad-organize-imports "traad" "\
Organize the import statements in FILENAME.

\(fn FILENAME)" t nil)

(autoload 'traad-expand-star-imports "traad" "\
Expand * import statements in FILENAME.

\(fn FILENAME)" t nil)

(autoload 'traad-froms-to-imports "traad" "\
Convert 'from' imports to normal imports in FILENAME.

\(fn FILENAME)" t nil)

(autoload 'traad-relatives-to-absolutes "traad" "\
Convert relative imports to absolute in FILENAME.

\(fn FILENAME)" t nil)

(autoload 'traad-handle-long-imports "traad" "\
Clean up long import statements in FILENAME.

\(fn FILENAME)" t nil)

(autoload 'traad-imports-super-smackdown "traad" "\


\(fn FILENAME)" t nil)

(autoload 'traad-display-occurrences "traad" "\
Display all occurences the use of the symbol at POS in the
current buffer.

\(fn POS)" t nil)

(autoload 'traad-display-implementations "traad" "\
Display all occurences the use of the symbol as POS in the
current buffer.

\(fn POS)" t nil)

(autoload 'traad-goto-definition "traad" "\
Go to the definition of the function as POS.

\(fn POS)" t nil)

(autoload 'traad-findit "traad" "\
Run a findit function at the current point.

\(fn TYPE)" t nil)

(autoload 'traad-code-assist "traad" "\
Get possible completions at POS in current buffer.

This returns an alist like ((completions . [[name documentation scope type]]) (result . \"success\"))

\(fn POS)" t nil)

(autoload 'traad-display-calltip "traad" "\
Display calltip for an object.

\(fn POS)" t nil)

(autoload 'traad-popup-calltip "traad" "\


\(fn POS)" t nil)

(autoload 'traad-display-doc "traad" "\
Display docstring for an object.

\(fn POS)" t nil)

(autoload 'traad-popup-doc "traad" "\


\(fn POS)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; traad-autoloads.el ends here
