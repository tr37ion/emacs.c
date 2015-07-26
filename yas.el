;; YAS
;; (require 'yasnippet)
;(defadvice ac-common-setup (after give-yasnippet-highest-priority activate)
;  "Set yas source path."
;  (setq ac-sources (delq 'ac-source-yasnippet ac-sources))
;  (add-to-list 'ac-sources 'ac-source-yasnippet))
(setq yas-snippet-dirs '("~/.emacs.d/elisp/yasnippet/snippets" ))          ;; personal snippets
(yas-global-mode 1) ;; or M-x yas-reload-all if you've started YASnippet already.
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
;;(define-key yas-minor-mode-map (kbd "<the new key->") 'yas-expand)
