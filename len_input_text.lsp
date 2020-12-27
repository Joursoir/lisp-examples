#!/usr/bin/ecl -shell

(defun main (len)
	(let ((ch (read-char t nil nil)))
		(cond
			((eq ch nil) t)
			((eq ch #\Newline) (princ len) (terpri) (main 0))
			(t (main (+ 1 len)))
		)
	)
)

(main 0)