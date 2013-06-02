#!/usr/bin/env gosh

(define (new-if predicate then-clause else-clause) 
  ; then-clause and else-clause both compute
	(cond (predicate then-clause)
				(else else-clause)
	)
)

(define (sqrt x)
	(sqrt-iter 1.0 x) 
)

(define (sqrt-iter guess x)
  (print guess)		
	(new-if
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
;(print (sqrt 15))
(print (new-if 1 (print "good") (print "bad")))
(print (if 1 (print "good") (print "bad")))
