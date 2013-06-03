#!/usr/bin/env gosh

;; digui
(define (f n)
    (if (< n 3) 
      n
      (+ 
        (f (- n 1))
        (* 2 (f (- n 2)))
        (* 3 (f (- n 3)))
        )
    )
  )
(print (f 1))
(print (f 2))
(print (f 3))
(print (f 4))

;; diedai
(define (fun n) 
  (ft 2 1 0 n)
)
(define (ft a b c n)
    (cond 
      ((= n 0) c)
      ((= n 1) b)
      ((= n 2) a)
      (else (ft 
              (+ a (* 2 b) (* 3 c))
              a
              b
              (- n 1)
            )
      ) 
    )  
)
(print (fun 1))
(print (fun 2))
(print (fun 3))
(print (fun 4))
