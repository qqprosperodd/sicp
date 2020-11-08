#lang sicp
(define (cont-frac n d k)
  (cond ((zero? k) 0)
        (else (/ (n k)
                 (- (d k) (cont-frac n d (- k 1)))))))
(define (square x)
  (* x x))
(define (tan-cf x k)
  (cont-frac (lambda (i)
             (if (= i 1) x
                 (square x)))
           (lambda (i)
             (- (* 2 i) 1))
           k))
(tan-cf 40 10000)

           