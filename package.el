;; Load Package Management
(require 'package)

;; Define Package Sources
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

;; Initialize Package Management
(package-initialize)

;; Define Package Paths
;(add-to-list 'load-path (expand-file-name "~/.emacs.c"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elpa"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))

;; ArchLinux: PKGBUILD Mode
(autoload 'pkgbuild-mode "pkgbuild-mode.el" "PKGBUILD mode." t)
(setq auto-mode-alist (append '(("/PKGBUILD$" . pkgbuild-mode))
                                auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.install\\'" . pkgbuild-mode))
