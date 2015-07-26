;; ido Toolbar + ibuffer
;;#(require 'ido)
(eval-when-compile
    (require 'cl))
(ido-mode t)
  (setq ido-enable-flex-matching t)
;;(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Add Recent Mode to ido with smex
;;# (require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your "new" old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; ido Ubiquitous is already enabled via Melpa

;; Save last 200 recent files with ido-mode
(defun recentf-ido-find-file ()
  "Find a recent file using ido."
  (interactive)
  (let ((file (ido-completing-read "Choose recent file: " recentf-list nil t)))
    (when file
      (find-file file))))
(global-set-key (kbd "C-c f")  'recentf-ido-find-file)

;; Flx-ido: Fuzzy matching for Emacs
;;#(require 'flx-ido)
;(ido-mode 1)
;;(ido-everywhere 1)
(setq ido-use-faces nil)
