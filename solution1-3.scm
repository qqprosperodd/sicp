#lang sicp
(define (fun2 a b c)
  (cond ((and (< c a) (< c b)) (+ (* a a) (* b b)))
        ((and (< b a) (< b c)) (+ (* a a) (* c c)))
        ((and (< a b) (< a c)) (+ (* c c) (* b b)))))
(fun2 6 3 5)
(fun2 20 3 -4)