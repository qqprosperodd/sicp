#lang sicp
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))
(define (start-segment x y)
  (cons x y))
(define (end-segment x y)
  (cons x y))
(define (x-point lis)
  (car lis))
(define (y-point lis)
  (cdr lis))
(define (make-square a b)
  (cons a  b))
(define (perim lis)
  (* 2 (+ (abs (- (caar lis) (cdar lis)))
          (abs (- (cadr lis) (cddr lis))))))
(define (area lis)
  (* 2 (abs (- (caar lis) (cdar lis)))
       (abs (- (cadr lis) (cddr lis)))))
(perim
 (make-square
   (start-segment 53 5)
   (end-segment 6 14)))
(area
 (make-square
   (start-segment 53 5)
   (end-segment 6 14)))
