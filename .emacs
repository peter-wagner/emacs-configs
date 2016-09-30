(package-initialize)

(add-to-list 'display-buffer-alist '("*shell*" display-buffer-same-window))

;; M-x toggle-debug-on-error
;; (setq debug-on-message "Not a nREPL dict object")

;; (profiler-start)
;; (profiler-stop)
;; (profiler-report)

;; "--------THEME STUFF--------"
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(setq sml/no-confirm-load-theme t)
;; (load-theme 'ample t)
;; (load-theme 'ample-zen t)              
(load-theme 'darktooth t)

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
  (package-initialize))

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; "-------ORG-MODE STUFF-------"

(unless package-archive-contents    ;; Refresh the packages descriptions
  (package-refresh-contents))
(setq package-load-list '(all))     ;; List of packages to load
(unless (package-installed-p 'org)  ;; Make sure the Org package is
  (package-install 'org))           ;; installed, install it if not

(setq org-todo-keywords
       '((sequence "TODO" "DO ASAP" "DO NEXT" "|" "DONE" "SCHEDULED")))

(setenv "PATH" (concat (getenv "PATH") ":/Users/pairuser/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))


(menu-bar-mode -1)
;; (electric-pair-mode t)
(scroll-bar-mode -1)
(show-paren-mode 1)
(setq make-backup-files nil)
(setq backup-by-copying t)
(setq delete-auto-save-files t)
(setq delete-old-versions t)

(setq indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)

(setq visible-bell nil)
(fset 'yes-or-no-p 'y-or-n-p)
(column-number-mode t)
(blink-cursor-mode 1)
(menu-bar-mode -1)
(set-fill-column '80)
(setq minibuffer-max-depth nil)
(setq display-time-day-and-date t)
(setq display-time-mail-string "")
(setq display-time-default-load-average nil)
(display-time)

(setq calendar-standard-time-zone-name "MST")
(setq calendar-location-name "Phoenix, AZ")
(setq calendar-latitude 34.65)
(setq calendar-longitude -112.43)
(setq calendar-week-start-day 1)
(smart-mode-line-enable)

;; Linum mode                                                                                                                                                                                                                           
;; (global-linum-mode t)                                                                                                                                                         

;; Offset the number by two spaces to work around some weird fringe glitch                                                                                                                                                                     
(setq linum-format "  %d ")

(require 'ido)
(ido-mode t)

(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-region 'disabled nil)

(setq browse-url-browser-function 'browse-url-default-browser)

(setq search-highlight t)
(setq query-replace-highlight t)

(setq next-line-add-newline t)
(setq require-final-newline nil)
(setq transient-mark-mode t)
(setq select-enable-clipboard t)
(setq max-specpdl-size 15000)
(setq max-lisp-eval-depth 12000)
(setq-default case-fold-search t)
(set-frame-parameter (selected-frame) 'alpha 100)
(mouse-avoidance-mode 'cat-and-mouse)
(abbrev-mode t)
(icomplete-mode t)
(setq org-directory "/Users/pairuser/.org/")

(tool-bar-mode -1)
(setq mouse-wheel-scroll-amount '(4 ((shift) . 4) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

(setq pending-delete-mode t)



(require 'switch-window)
(setq-default switch-window-shortcut-style 'alphabet)
(setq-default switch-window-timeout nil)
(global-set-key (kbd "C-x o") 'switch-window)



;; https://www.emacswiki.org/emacs/WinSwitch

(global-set-key "\C-xx" 'win-switch-dispatch)
(global-set-key (kbd "C-x <up>") 'win-switch-dispatch)
(win-switch-setup-keys-arrows (kbd "C-x <up>"))
(win-switch-add-key (kbd "M-<up>") 'enlarge-vertically)
(win-switch-add-key (kbd "M-<down>") 'shrink-vertically)
(win-switch-add-key (kbd "M-<left>") 'enlarge-horizontally)
(win-switch-add-key (kbd "M-<right>") 'shrink-horizontally)
(setq win-switch-idle-time 1.5)
;; (win-switch-set-wrap-around)



(defun perfect-track-directory (text)
  (if (string-match "\\w*Working directory is ||\\([^|]+\\)||" text)
      (cd (substring text (match-beginning 1) (match-end 1)))))

;; (setq shell-mode-hook 'brant-shell-setup) 

(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(setq process-coding-system-alist
      (cons '("bash" . undecided-unix) process-coding-system-alist))

(setq exec-path (cons "/bin" exec-path))

(setenv "PATH" (concat "/bin:" "/usr/bin:" "/usr/sbin:" "/usr/local/bin:"
		       (getenv "PATH")))

(setq shell-filename "bash")
(setenv "SHELL" shell-file-name)
(setq explicit-shell-file-name shell-file-name)

(defun brant-clear()
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer))
  (eshell-send-input))

(defun brant-clear-region ()
  (interactive)
  (delete-region (point-min) (point-max))
  (comint-send-input))

;; ;; "-------KEY BINDINGS-------"


(global-set-key (kbd "C-c <up>") 'beginning-of-buffer)
(global-set-key (kbd "C-c <down>") 'end-of-buffer)

(global-set-key (kbd "<home>") 'beginning-of-buffer)
(global-set-key (kbd "<end>") 'end-of-buffer)
(global-set-key (kbd "<f11>") 'linum-mode)
(global-set-key (kbd "<f12>") 'revert-buffer)
(global-set-key (kbd "<f13>") 'eval-buffer)
(global-set-key (kbd "<clear>") 'brant-clear-region)
(global-set-key "\C-c\C-d" "\C-a\C- \C-n\M-w\C-y")
(global-set-key (kbd "C-c <deletechar>") 'pairuser-cider-reple-clear-output-and-buffer)

(global-set-key (kbd "C-c l") 'goto-line)
(global-set-key (kbd "C-c p") 'paredit-mode)
(global-set-key (kbd "C-c s") 'shell)
(global-set-key (kbd "C-c t") 'toggle-truncate-lines)
(global-set-key (kbd "C-c v") 'brant-clear-region)

;; "------SHELL CONFIG STUFF----------"

(setq ansi-color-names-vector ; better contrast colors
      ["black" "red4" "green4" "yellow4"
       "blue3" "magenta4" "cyan4" "white"])
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; "------CLEAR COMMAND-------"
(add-hook 'shell-mode-hook 'n-shell-mode-hook)
(defun n-shell-mode-hook ()
  "12Jan2002 - sailor, shell mode customizations."
  (setq comint-input-sender 'n-shell-simple-send)
  )

(defun n-shell-simple-send (proc command)
  "17Jan02 - sailor. Various commands pre-processing before sending to shell."
  (cond
   ;; Checking for clear command and execute it.
   ((string-match "^[ \t]*clear[ \t]*$" command)
    (comint-send-string proc "\n")
    (erase-buffer)
    )
   ;; Checking for man command and execute it.
   ((string-match "^[ \t]*man[ \t]*" command)
    (comint-send-string proc "\n")
    (setq command (replace-regexp-in-string "^[ \t]*man[ \t]*" "" command))
    (setq command (replace-regexp-in-string "[ \t]+$" "" command))
    ;;(message (format "command %s command" command))
    (funcall 'man command)
    )
   ;; Send other commands to the default handler.
   (t (comint-simple-send proc command))
   )
  )

;; "--------JAVA MODE--------"

(add-hook 'java-mode-hook #'auto-complete-mode)

;; "--------GROOVY MODE------"
;;; use groovy-mode when file ends in .groovy or has #!/bin/groovy at start
(autoload 'groovy-mode "groovy-mode" "Groovy editing mode." t)
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

;; "-------JAVASCRIPT/REACT STUFF---------"
(defun ome-web-mode-hook ()
  ;; indentation
  ;; HTML offset indentation
  (setq web-mode-markup-indent-offset 2)
  ;; CSS offset indentation
  (setq web-mode-code-indent-offset 2)
  ;; Script offset indentation (for JavaScript, Java, PHP, etc.)
  (setq web-mode-css-indent-offset 2)
  ;; HTML content indentation
  (setq web-mode-indent-style 2)
  
  ;; padding
  ;; For <style> parts
  (setq web-mode-style-padding 1)
  ;; For <script> parts
  (setq web-mode-script-padding 1)
  ;; For multi-line blocks
  (setq web-mode-block-padding 0))

(add-hook 'web-mode-hook 'ome-web-mode-hook)

(setq js2-basic-offset 2)
(setq js-indent-level 2)
(setq web-mode-markup-indent-offset 2)
(setq electric-pair-pairs '((?' . ?')))

(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.json\\'" . web-mode))
(add-hook 'web-mode-hook #'js2-minor-mode)
(add-hook 'web-mode-hook #'electric-pair-mode)
(add-hook 'web-mode-hook #'auto-complete-mode)

;; "-------CLOJURE CIDER LEIN STUFF-------"
(rainbow-delimiters-mode 1)
(require 'cider)

(setq cider-repl-display-help-banner nil)

(add-hook 'cider-mode-hook #'eldoc-mode)

(add-hook 'emacs-lisp-mode #'paredit-mode)

(add-hook 'cider-repl-mode-hook #'paredit-mode)
(add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)
(add-hook 'cider-repl-mode-hook #'auto-complete-mode)
;; (add-hook 'clj-mode-hook #'cider-mode)

(add-hook 'clj-mode-hook #'paredit-mode)
(add-hook 'clj-mode-hook #'rainbow-delimiters-mode)
(add-hook 'clj-mode-hook #'auto-complete-mode)
(add-hook 'clj-mode-hook #'cider-mode)
(add-hook 'clj-mode-hook #'clojure-mode)

(add-hook 'emacs-lisp-mode-hook #'paredit-mode)
(add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)
(add-hook 'emacs-lisp-mode-hook #'auto-complete-mode)

(setq cider-show-error-buffer nil)

(defun pairuser-cider-reple-clear-output-and-buffer ()
  (interactive)
  (cider-repl-clear-output)
  (cider-repl-clear-buffer))

(global-set-key (kbd "C-c j") 'cider-jack-in)
(global-set-key (kbd "C-c r") 'cider-restart)

(global-set-key (kbd "C-c C-l") 'cider-load-file)

(require 'ac-cider)

(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
;; (add-hook 'cider-repl-mode-hook 'ac-flyspell-workaround)

(add-hook 'cider-mode-hook 'ac-cider-setup)
(add-hook 'cider-repl-mode-hook 'ac-cider-setup)



(eval-after-load "auto-complete"
  '(progn
     (add-to-list 'ac-modes 'cider-mode)
     (add-to-list 'ac-modes 'cider-repl-mode)))



(defun set-auto-complete-as-completion-at-point-function ()
  (setq completion-at-point-functions '(auto-complete)))

(add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)
(add-hook 'cider-mode-hook 'set-auto-complete-as-completion-at-point-function)

;;; Fix these. They break!!!
;; (define-key paredit-mode-map (kbd "[") 'paredit-open-round)
;; (define-key paredit-mode-map (kbd "]") 'paredit-close-round)
;; (define-key paredit-mode-map (kbd "M-[") 'paredit-wrap-round)
;; (define-key paredit-mode-map (kbd "(") 'paredit-open-square)
;; (define-key paredit-mode-map (kbd ")") 'paredit-close-square)



(desktop-save-mode 1)
(setq desktop-path '("/Users/pairuser/.emacs.d/"))
(setq desktop-save 'ask-if-new)



(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)



(global-set-key (kbd "C-:") 'avy-goto-char)
(global-set-key (kbd "C-'") 'avy-goto-char-2)
(global-set-key (kbd "M-g f") 'avy-goto-line)
(global-set-key (kbd "M-g w") 'avy-goto-word-1)
(global-set-key (kbd "M-g e") 'avy-goto-word-0)

(avy-setup-default)



(defun delete-nrepl-buffers ()
  (interactive)
  (dolist (buffer (buffer-list))
    (when (string-prefix-p "*nrepl" (buffer-name buffer))
      (kill-buffer buffer))))



;;; Fix this.
;; (require 'clj-refactor)
;; (defun my-clojure-mode-hook ()
;;     (clj-refactor-mode 1)
;;     (yas-minor-mode 1) ; for adding require/use/import statements
;;     ;; This choice of keybinding leaves cider-macroexpand-1 unbound
;;     (cljr-add-keybindings-with-prefix "C-c C-m"))

;; (add-hook 'clojure-mode-hook #'my-clojure-mode-hook)



;; (semantic-mode 1)
;; (require 'ecb)




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; '(ecb-options-version "2.40")
 ;; '(ecb-sour-path
 ;;   (quote "/Users/pairuser/dev/CDS-API"))
 '(custom-safe-themes
   (quote
    ("04dd0236a367865e591927a3810f178e8d33c372ad5bfef48b5ce90d4b476481" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "705f3f6154b4e8fac069849507fd8b660ece013b64a0a31846624ca18d6cf5e1" "0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "0a5e87ac98b0adfe4e12356fff24d49ffbbe5ef0aa8290752c184e6857d70558" "603a9c7f3ca3253cb68584cb26c408afcf4e674d7db86badcfe649dd3c538656" "cedd3b4295ac0a41ef48376e16b4745c25fa8e7b4f706173083f16d5792bb379" "e0ba7486f801413e327bbae09c1b44b96021c4246b3a8dfd71bb314e73a6698e" "ac2b1fed9c0f0190045359327e963ddad250e131fbf332e80d371b2e1dbc1dc4" "7a83132ecb08e86c63d3cbf4b677d4cb1bcfcfb47f4942f2b8ecc7f6ebc2004c" "7b4d9b8a6ada8e24ac9eecd057093b0572d7008dbd912328231d0cada776065a" "51e228ffd6c4fff9b5168b31d5927c27734e82ec61f414970fc6bcce23bc140d" "3d5307e5d6eb221ce17b0c952aa4cf65dbb3fa4a360e12a71e03aab78e0176c5" "e97dbbb2b1c42b8588e16523824bc0cb3a21b91eefd6502879cf5baa1fa32e10" "1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "ec0c9d1715065a594af90e19e596e737c7b2cdaa18eb1b71baf7ef696adbefb0" "c697b65591ba1fdda42fae093563867a95046466285459bd4e686dc95a819310" "e008d9149dd39b249d4f8a9b5c1362d8f85bd11e9c08454e5728fbf0fcc11690" "caa9a86ff9b85f733b424f520ec6ecff3499a36f20eb8d40e3096dbbe1884069" "30ba590271e63571536bcded60eca30e0645011a860be1c987fc6476c1603f15" "0ae977e603e99d89c80d679377bfed4a904317968bd885ee063455cee01728d3" "bbb51078321186cbbbcb38f9b74ea154154af10c5d9c61d2b0258cb4401ac038" "31ba13fd560daff5b05e11d4be7d280213249225e85969ec5bc71532e788ee81" "a3132bd39a977ddde4c002f8bd0ef181414c3fbe9228e3643b999491192680ad" "3ff96689086ebc06f5f813a804f7114195b7c703ed2f19b51e10026723711e33" "1b1e54d9e0b607010937d697556cd5ea66ec9c01e555bb7acea776471da59055" "71ecffba18621354a1be303687f33b84788e13f40141580fa81e7840752d31bf" "90e4b4a339776e635a78d398118cb782c87810cb384f1d1223da82b612338046" "9b402e9e8f62024b2e7f516465b63a4927028a7055392290600b776e4a5b9905" "a1289424bbc0e9f9877aa2c9a03c7dfd2835ea51d8781a0bf9e2415101f70a7e" "db2ecce0600e3a5453532a89fc19b139664b4a3e7cbefce3aaf42b6d9b1d6214" "17a8fa9430ffd81f242ed3ee95e59629ccf9e1210657536013a0def9b16e68c9" "fd7ef8af44dd5f240e4e65b8a4eecbc37a07c7896d729a75ba036a59f82cfa58" "5562060e16ae3188e79d87e9ba69d70a6922448bcc5018205850d10696ed0116" "73e09ba6f23a9b3aeedb3ee8589da74182b644c169daa62c4454eac73eea610a" "a1493957ee779057acdc4c337133f217dd7b2edfdeeffed903ba2f16246f665a" "ad97202c92f426a867e83060801938acf035921d5d7e78da3041a999082fb565" "0aca3a26459bbb43a77f34bc22851c05c0a5d70d3230cbcdbda4fec20fef77e6" "9a3c51c59edfefd53e5de64c9da248c24b628d4e78cc808611abd15b3e58858f" "af4cfe7f2de40f19e0798d46057aae0bccfbc87a85a2d4100339eaf91a1f202a" "adbe7ba38c551281f21d760de0840cab0e1259964075a7e46cc2b9fdea4b82d6" "57d7e8b7b7e0a22dc07357f0c30d18b33ffcbb7bcd9013ab2c9f70748cfa4838" "52f03628824e6f87d32487593aaa707021e9af2ad00cd8009416dca5865b825a" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)


