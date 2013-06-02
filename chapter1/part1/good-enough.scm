#!/usr/bin/env gosh

;;; sqrt.scm

(define (sqrtx x)
	(sqrt-iter 1.0 x) 
)

(define (sqrt-iter guess x)
 	(print guess);
	(if
	 	(good-enough-new (improve guess x) guess)
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

(define (good-enough-new new-guess old-guess) 
	(> 0.01 (/ (abs (- new-guess old-guess)) old-guess)) 
)

(define (square x)
	(* x x)
)
(print (sqrtx 15))
(print (square (sqrtx 0.00009))" " 0.00009)

(print (sqrtx 90000000000000000000000000000000000000000000000000000000000000000000000000000))

