;; Auto-Complete Mode
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)
;;(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
;; Start auto-completion after 2 characters of a word
(setq ac-auto-start 2)
;; case sensitivity is important when finding matches
(setq ac-ignore-case nil)
;; Change default sources
;;(setq-default ac-sources '(ac-source-abbrev ac-source-words-in-buffer))
;;(ac-flyspell-workaround)
