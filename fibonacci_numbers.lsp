#!/usr/bin/ecl -shell

(defun fibonacci (n)
	(cond
		((= n 0) 1)
		((= n 1) 1)
		(t (+ (fibonacci (- n 1)) (fibonacci (- n 2))))
	)
)

(do ((i 0 (+ i 1)))
	((> i 20) i)
	(princ (fibonacci i))
	(terpri)
)

; value = 1 + 1 + 2 + 3 + 5 + 8 + 13 + 21 + ...
; count = 0   1   2   3   4   5    6    7 	...
