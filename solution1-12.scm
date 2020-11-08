#lang sicp
(define (pascal col layer)
  (cond ((= col 1) 1)
        ((= col layer) 1)
        (else (+ (pascal (- col 1) (- layer 1)) (pascal col (- layer 1))))))
(pascal 1 5)
(pascal 2 6)
(pascal 5 17)