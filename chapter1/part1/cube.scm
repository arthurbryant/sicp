#!/usr/bin/env gosh

;;; cube.scm

(define (cube x) 
    (cube-iter 1.0 x)	
)
(define (cube-iter guess x)
	(if (good-enough-new (improve guess x) guess) 
	 	guess
		(cube-iter (improve guess x) x)
	) 
)
(define (improve guess x)
	(/ (+ (/ x (* guess guess)) (* 2 guess)) 3)
 )
 
(define (good-enough-new new-guess old-guess) 
	(> 0.01 (/ (abs (- new-guess old-guess)) old-guess)) 
)

(print (cube 27))
(print (cube 345))

