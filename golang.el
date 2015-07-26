;; Golang Mode
;;(require 'go-autocomplete)

;; Go-Eldoc
;;(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)

;; Format Code before save
(add-hook 'before-save-hook 'gofmt-before-save)

;; C-c C-r to remove all unused imports
(add-hook 'go-mode-hook '(lambda ()
			   (local-set-key- (kbd "C-c C-r") 'go-remove-unused-imports)))

;; C-c C-g as a mnemonic of "goto" imports section
(add-hook 'go-mode-hook '(lambda ()
			   (local-set-key- (kbd "C-c C-g") 'go-goto-imports)))

;; C-c C-f as a mnemonic for "format" code
(add-hook 'go-mode-hook '(lambda ()
			   (local-set-key- (kbd "C-c C-f") 'gofmt)))
(add-hook 'before-save-hook 'gofmt-before-save)

;; C-c C-k as a mnemonic for man -k or apropos. godoc
(add-hook 'go-mode-hook '(lambda ()
			   (local-set-key- (kbd "C-c C-k") 'godoc)))

;; go-autocomplete - Tabs and no Spaces
(setq-default c-basic-offset 4
	      tab-width 4
	      indent-tabs-mode t)

;; go with flycheck
(add-to-list 'auto-mode-alist '("\\.go\\'" . flycheck-mode))
