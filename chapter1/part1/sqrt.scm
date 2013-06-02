#!/usr/bin/env gosh

;;; sqrt.scm

(define (sqrt x)
	(sqrt-iter 1.0 x) 
)

(define (sqrt-iter guess x)
	(if
	 	(good-enough guess x)
			guess
			(sqrt-iter (improve guess x) x)		 
	) 
)
(define (improve guess x)
	(avg (/ x guess) guess)
)
(define (avg x y)
	(/ (+ x y) 2)
)
(define (good-enough guess x)
	(< (abs (- (square guess) x)) 0.00001) 
)
(define (square x)
	(* x x)
)
(print (sqrt 15))
