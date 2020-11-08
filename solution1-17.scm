#lang sicp
(define (double x)
  (+ x x))
(define (halve x)
  (cond ((even? x) (/ x 2))))
(define (fast-expt-iter b n a)
  (cond ((= n 0) a)
        ((even? n) (fast-expt-iter (* b b) (halve n) a))
        (else (fast-expt-iter b (- n 1) (* a b)))))