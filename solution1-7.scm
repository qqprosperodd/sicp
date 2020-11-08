#lang sicp
(define (sqrt x)
  (sqrt-iter 1.0 0 x))
 
(define (sqrt-iter guess last-guess x)
  (if (good-enough? guess last-guess x)
      guess
      (sqrt-iter (improve guess x)
                 guess
                 x)))
 
(define (good-enough? guess last-guess x)
  (< (abs (- guess last-guess)) (/ guess 100000)))