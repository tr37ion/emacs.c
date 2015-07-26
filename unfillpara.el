;; Takes a multi-line paragraph and makes it into a single line of text.
(defun bcm-unfill-paragraph ()
  "Un-fill paragraph at point."
  (interactive)
  (let ((fill-column (point-max)))
    (fill-paragraph nil)))
(global-set-key "\M-p" 'bcm-unfill-paragraph)

