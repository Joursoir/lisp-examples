#!/usr/bin/ecl -shell

(defvar PROBLEM) ; for dynamic linking method
(setq PROBLEM 90)

(defun make-adder (PROBLEM)
	#'(lambda (x) (+ PROBLEM x))
)

(setq plus5 (make-adder 5))
(princ (funcall plus5 5))
(terpri)
(setq plus10 (make-adder 10))
(princ (funcall plus10 10))
(terpri)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; use lexical linking method
(defun make-adder2 (num)
	#'(lambda (x) (+ num x))
)

(setq plus5 (make-adder2 5))
(setq plus10 (make-adder2 10))
(princ (funcall plus5 0))
(terpri)
(princ (funcall plus10 0))
(terpri)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defvar THEVAR) ; for dynamic linking method

(defun f1 (func THEVAR)
	(funcall func THEVAR)
)

(defun f2 (THEVAR)
	(f1 #'(lambda (x) (+ THEVAR x)) 1000)
)

(princ (f2 5))
(terpri)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; use lexical linking method
(defun var_values (var)
	(cons var (symbol-value 'var))
)

(setq var "global")
(princ (var_values "local"))
(terpri)