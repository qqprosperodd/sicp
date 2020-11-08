#lang sicp
(define (square x)
  (* x x))
(define (compose f g)
  (lambda (n)
    (f (g n))))
(define (repeated f n)
  (if (= n 1)
      f
      (compose f (repeated f (- n 1)))))
((repeated square 2) 5)