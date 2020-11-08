#lang sicp
(define (fast-expt2 b n a)
  (cond ((= n 0) a)
        ((even? n) (fast-expt2 (square b) (/ n 2) a))
        (else (fast-exp2 b (- n 1) (* a b)))))
  