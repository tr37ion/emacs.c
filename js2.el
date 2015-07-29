;; js2 mode - https://github.com/ScottyB/ac-js2
;;(require 'js2-mode)
;;(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js2-mode-hook 'js2-minor-mode)
(add-hook 'js2-mode-hook 'ac-js2-mode)
(setq js2-highlight-level 3)
(add-to-list 'auto-mode-alist (cons (rx ".js" eos) 'js2-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))

;; Using external ac-js2-libs
;(setq ac-js2-evaluate-calls t)
;(setq ac-js2-external-libraries '("full/path/to/a-library.js"))

;; JS2-Refactor
(add-hook 'js2-mode-hook #'js2-refactor-mode)
;; eg. extract function with `C-c C-m ef`.
(js2r-add-keybindings-with-prefix "C-c C-m")
;; eg. extract function with `C-s-e C-s-f`.
;(js2r-add-keybindings-with-modifier "C-s-")
;; or as another example:
;(define-key js2-refactor-mode-map (kbd "C-c C-e C-f") 'js2r-extract-function)

;; Skewer Mode
(add-hook 'js2-mode-hook 'skewer-mode)
(add-hook 'css-mode-hook 'skewer-css-mode)
(add-hook 'web-mode-hook 'skewer-html-mode)

;; Tern JS Tools
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))

