;; Some editor settings
(when (fboundp 'tool-bar-mode)
      (tool-bar-mode -1))

;; Remove wasted pixels left of col1.
(when (fboundp 'set-fringe-mode)   ; Added in >22.
    (set-fringe-mode 2))           ; Space in pixels.

(global-font-lock-mode 1)          ; Turn on font lock mode everywhere.
(blink-cursor-mode nil)            ; Disable cursor blinking.
(setq visible-bell t)              ; Make bell visible, not aural.

(when window-system
  (set-scroll-bar-mode 'right)     ; If turned on, use right scrollbars.
  (scroll-bar-mode -1)             ; Hide the scroll bar.
  (tooltip-mode 0))                ; Disable tooltips.
  (menu-bar-mode -1)                 ; Hide the menu bar.

;;(when window-system
;    (set-face-attribute 'default nil :font "dejavu sans mono-12"))

;; Show Current Column Number
(column-number-mode 1)

;; Line Number Mode
(line-number-mode 1)

;; Mark Parenteses
(show-paren-mode 1)

;; Automatically start Auto Fill mode in Text mode
;;(add-hook 'text-mode-hook 'auto-fill-mode)

;; Hide mouse on keyboard input
;;(mouse-avoidance-mode 1)

;; Scrollbars Off
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Cursor Shape
(set-default 'cursor-type 'box)

;; Zap up to Char (M-z)
(autoload 'zap-up-to-char "misc"
  "Kill up to, but not including ARGth occurrence of CHAR." t)

;; Better Search Keystrokes
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;; Visible Bell
(setq visible-bell t)

;; Set Tabs Ident Mode
(setq-default indent-tabs-mode nil)

;; Better Clipboard behaviour with GUI
(setq x-select-enable-clipboard t
      x-select-enable-primary t
      save-interprogram-paste-before-kill t)

;; Apropos extensive searches
(setq apropos-do-all t)

;; Yank at Mouse Pointer
(setq mouse-yank-at-point t)

;; No new Ediff Frame
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;; Electric Help
;;(global-set-key "\C-h" 'ehelp-command)

;; Hippie Expand
;;(global-set-key (kbd "M-/") 'hippie-expand)

;; Some X settings
(scroll-bar-mode 0)
(display-time-mode 1)

;; I-Complete Mode
(icomplete-mode 1)

;; Iedit Mode
;#(require 'iedit-mode)
(define-key global-map (kbd "C-c ;") 'iedit-mode)

;; Flip-Flop Frames
;;#(require 'transpose-frame)
;; Activate perspective mode
(persp-mode)

;; Back to previous window
(global-set-key (kbd "C-x O") (lambda ()
                                (interactive)
                                (other-window -1)))

;; Type character paring
(electric-pair-mode +1)

;; Return indent mode
(electric-indent-mode +1)

;; Xterm Mouse Support for TTY
;#(require 'mouse)
(xterm-mouse-mode t)

;; Start with right terminal settings
(defun terminal-init-screen ()
  "Terminal initialization function for screen."
  ;; Use the xterm color initialization code.
  ;;(xterm-register-default-colors)
  (tty-set-up-initial-frame-faces))
