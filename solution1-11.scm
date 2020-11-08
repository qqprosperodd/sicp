#lang sicp
(define (fun4 a)
  (if (< a 4) a
      (+ (fun4 (- a 1)) (* 2 (fun4 (- a 2))) (* (fun4 (- a 3)) 3))))
(fun4 6)

(define (fun6 n)
  (fun6-iter 3 2 1 n))
(define (fun6-iter a b c count)
  (cond ((= count 1) c)
        ((= count 2) b)
        ((= count 3) a)
        ((> count 3) (fun6-iter (+ a (* 2 b) (* 3 c)) a b (- count 1)))))
(fun6 6)
(fun6 4)