#!/usr/bin/env gosh

; recursion
(define (f n)
	(cond 
	 	((< n 3) n)
		(else (+ 
			   	(f (- n 1))
			   	(* (f (- n 2)) 2)
			   	(* (f (- n 3)) 3)
			)
		)
	 ) 
 )
;(print (f 1))
;(print (f 2))
;(print (f 3))
;(print (f 5))

; iteration
(define (f2 n)
	(f-iter 2 1 0 n) 
)
(define (f-iter a b c n)
	(cond 
	 	((= n 0) c)
	 	((= n 1) b)
	 	((= n 2) a)
		(else (f-iter (+ a (* 2 b) (* 3 c)) a b (- n 1)))
	)
)

(print (f2 1))
(print (f2 2))
(print (f2 3))
(print (f2 4))
(print (f2 5))
