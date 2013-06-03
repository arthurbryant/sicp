#!/usr/bin/env gosh

(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle) 
    (print "angle=" angle)	
	(if (not (> (abs angle) 0.1))
	 	angle
		(p (sine (/ angle 3.0)))
	)
 )
(print (sine 12.15))
(print (sine 1.57))
