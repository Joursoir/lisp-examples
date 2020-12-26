#!/usr/bin/ecl -shell

(defun factorial (n)
	(if (= n 0)
		1
		(* n (factorial (- n 1)))
	)
)

(do ((i 0 (+ i 1)))
	((> i 10) i)
	(princ (factorial i))
	(terpri)
)
