#lang sicp
(define (cont-frac n d k)
  (cond ((zero? k) 0)
        (else (/ (n k)
                 (+ (d k) (cont-frac n d (- k 1)))))))
