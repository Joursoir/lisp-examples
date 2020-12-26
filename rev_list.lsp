#!/usr/bin/ecl -shell

; Function:
(defun my_rev_do (lst r_lst)
	(cond
		((null lst) r_lst)
		(t (my_rev_do (cdr lst) (cons (car lst) r_lst)))
	)
)

(defun my_reverse (lst)
	(my_rev_do lst ())
)

; Tests:
(princ (my_reverse ()))
(terpri)

(princ (my_reverse '(1 2 3)))
(terpri)

(princ (my_reverse '(A B 4 9 11)))
(terpri)
