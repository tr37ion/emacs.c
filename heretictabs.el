;; Heretical tab settings.  Emacs is smart enough to auto-disable this when
;; editing makefiles.
(setq-default indent-tabs-mode nil)

;; Using a tab-stop-list will preserve 8-space tabs for documents that have
;; them, but make my own tabs 2 spaces.
(setq tab-stop-list '(2 4 6 8 10 12 14 16 18))
