;; LUA Mode
;; (autoload 'lua-mode "lua-mode" "Lua editing mode." t)
;; (require 'flymake-lua)
;; (load-library "lua-block.el")
;; (lua-block-mode t)
;; (add-hook 'lua-mode-hook 'flymake-lua-load)
;; (add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
;; (add-to-list 'interpreter-mode-alist '("lua" . lua-mode))
;; 					(add-hook 'lua-mode-hook 'hs-minor-mode)

;; ;; Lua Syntax Highlighting - https://www.gnu.org/software/emacs/manual/html_node/elisp/Customizing-Keywords.html#Customizing-Keywords
;; (add-hook 'lua-mode-hook
;; 	  (lambda ()
;; 	    (font-lock-add-key-words nil
;; 				    '(("\\(:\\|=\\)" 1 font-lock-comment-delimiter-face prepend)
;; 				      ("\\([[:alpha:]]+(\\)" 1 font-lock-function-name-face prepend)
;; 				      ("\\((\\|)\\)" 1 font-lock-function-name-face prepend)
;; 				      ("\\([[:alpha:]]+\\[\\)" 1 font-lock-type-face prepend)
;; 				      ("\\(\\[\\|\\]\\)" 1 font-lock-type-face prepend)
;; 				      ("\\([[:digit:]]+\\)" 1 font-lock-preprocessor-face prepend)
;; 				      ("\\({\\|}\\|\\,\\|\\.\\)" 1 font-lock-constant-face prepend)
;; 				      ("\\<\\(and\\|or\\|not\\)\\>" . font-lock-key-word-face)))))
;; ;; Start LÖVE main.lua
;; (global-set-key (kbd "C-c C-b") (lambda () (interactive) (shell-command "love .")))
