#!/usr/bin/env gosh

(define (sum_of_max_two x y z) 
    (cond   ((and (> x y) (> y z)) (+ x y))
            ((and (> x y) (> z y)) (+ x z))
            (else (+ y z))
    )
)
(print (sum_of_max_two 2 5 3))
