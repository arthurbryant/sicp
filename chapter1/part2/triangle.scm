#!/usr/bin/env gosh

(define (f m n)
	(cond
	 	((< m n) error "unvalid col value")
		((or (= n 1) (= m n)) 1)
	   	(else (+ (f (- m 1) (- n 1)) (f (- m 1) n)))	
	)
)
(print (f 4 1))
(print (f 4 2))
(print (f 4 3))
(print (f 4 4))
(print (f 4 5))
