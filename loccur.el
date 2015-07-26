;;#(require 'loccur)
;; Defines shortcut for loccur of the current word
(define-key global-map [(control o)] 'loccur-current)
;; Defines shortcut for the interactive loccur command
(define-key global-map [(control meta o)] 'loccur)
;; Defines shortcut for the loccur of the previously found word
(define-key global-map [(control shift o)] 'loccur-previous-match)
