#!/usr/bin/ecl -shell

; Functions:
(defun length1 (lst)
	(if (atom lst)
		0 ; true
		(+ 1 (length1 (cdr lst))) ; false
	)
)

(defun length2 (lst)
	(cond
		((null lst) 0)
		((atom lst) nil)
		((atom (cdr lst)) 1)
		(t (+ 1 (length2 (cdr lst))))
	)
)

; Tests:
(princ (length1 (quote (1 2 3 4 5 6))))
(terpri)

(princ (length1 (quote ())))
(terpri)

(princ (length1 '(nil 3 4 nil 0 t)))
(terpri)

(princ (length1 '(nil 3 4 (nil . (3 . (2 . ()))) 0 t)))
(terpri)

(princ (length1 '(1 (3 . 5))))
(terpri)

(princ (length2 '()))
(terpri)

(princ (length2 '3))
(terpri)

; nil = () = false
; quote (or: ') = no calculations