#lang sicp
(define (double x)
  (lambda (i)
    (x (x i))))
(define (inc y)
  (+ y 1))
((double inc) 4)
(((double (double double)) inc) 5)