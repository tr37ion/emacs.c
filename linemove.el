;; Move current line up/down
(defun move-line-down ()
  (interactive)
  (let ((col (current-column)))
    (save-excursion
      (forward-line)
      (transpose-lines 1))
    (forward-line)
    (move-to-column col)))

;;(defun move-line-up ()
(interactive)
(let ((col (current-column)))
  (save-excursion
	(forward-line)
	(transpose-lines -1))
  (move-to-column col)))

