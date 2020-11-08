#lang sicp
(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
     (product term (next a) next b))))
(define (inc2 x)
  (+ x 2))
(define (square x)
  (* x x))
(define (cal3 x)
  (/ (* x (+ x 2)) (square (+ x 1))))
(define (pi_cal a b )
  (* 4.0 (product cal3 a inc2 b)))

(pi_cal 2 500)