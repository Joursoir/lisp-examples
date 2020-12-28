#!/usr/bin/ecl -shell

(defun maxv_list (lst maximum)
	(let (
			(num (apply #'+ (car lst)))
		)
		(cond
			((null lst) maximum)
			((> num maximum) (maxv_list (cdr lst) num))
			(t (maxv_list (cdr lst) maximum))
		)
	)
)

(princ (maxv_list '((1 2 3) (3 2 1)) 0))
(terpri)

(princ (maxv_list '((1 5) (7 3) (3 5)) 0))
(terpri)

(princ (maxv_list '((-1 100 30) (0 3 4 103) (99 -99 1) (0) (34)) 0))
(terpri)