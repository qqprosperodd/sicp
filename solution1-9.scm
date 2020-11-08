#lang sicp
(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

(define (+sec a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))
(+ 4 5)
(+sec 4 5)