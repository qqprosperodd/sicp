#lang sicp
(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))
(define (make-rat n d)
  (let ((g (gcd n d)))
    (cond ((> d 0) (cons (/ n g) (/ d g)))
          ((= d 0) nil)
          ((< d 0) (cons (/ n g) (/ d g))))))
(make-rat 6 9)
(make-rat -6 9)
(make-rat 6 -9)
(make-rat -6 -9)
; remainder turns minus. so we dont need to fix.