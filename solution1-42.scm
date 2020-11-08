#lang sicp
(define (inc y)
  (+ y 1))
(define (square x)
  (* x x))
(define (compose f g)
  (lambda (n)
    (f (g n))))
((compose square inc) 6)