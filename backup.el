;; Backup Files Folder
(setq backup-directory-alist `(("." . "~/.saves")))

;; Save Backups in ~/.emacs.d/
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory
					       "backups"))))


