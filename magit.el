;;- Magit Github
(unless (fboundp 'magit-gh-pulls-mode)
  (package-install 'magit-gh-pulls))

(eval-after-load 'magit
  '(define-key magit-mode-map "#gg"
     (defun endless/load-gh-pulls-mode ()
       "Start `magit-gh-pulls-mode' only after a manual request."
       (interactive)
       (require 'magit-gh-pulls)
       (add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls)
       (magit-gh-pulls-mode 1)
       (magit-gh-pulls-reload))))
