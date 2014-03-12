
;problem 1.32

(require "global.rkt")

(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
         (accumulate combiner null-value term (next a) next b))))


(define (term x) (square (/ (* x 2) (- (* x 2) 1))))
(define (next x) (+ x 1))
(* (accumulate * 1 term 2 next 100) 2 (/ 1 (* 100 2)) 4)
