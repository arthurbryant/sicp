#!/usr/bin/env gosh

;;; 6-new-if.scm

(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)))
(print (new-if 1 1 0))
