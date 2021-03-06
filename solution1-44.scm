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
(define (smooth f)
  (lambda (x)
    (/ (+ (f (- x 0.0001)) (f x) (f (+ x 0.0001))) 3)))
(define (n-fold-smoothe f n)
  ((repeated smooth n) f))