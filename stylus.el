;; Stylus + AC
;(require 'stylus-mode)
(autoload 'stylus-mode "stylus-mode")
(add-to-list 'auto-mode-alist '("\\.styl\\'" . stylus-mode))
(setq scss-compile-at-save nil)

(defun configure-auto-complete-for-scss ()
  (add-to-list 'ac-sources 'ac-source-css-property))
(add-hook 'scss-mode-hook 'configure-auto-complete-for-sass)
(add-to-list 'ac-modes 'stylus-mode)

(add-hook 'stylus-mode-hook 'rainbow-mode)
