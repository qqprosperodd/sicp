#lang sicp
(define (sqrt2-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt2-iter (improve guess x)
                 x)))
(define (improve guess x)
  (/ (+ (* 2 guess) (/ x (* guess guess))) 3))

(define (good-enough? guess x)
  (< (abs (- (triple guess ) x)) 0.001))
(define (triple x)
  (* x x x))
(define (sqrt x)
  (sqrt2-iter 1.0 x))
(sqrt 27)