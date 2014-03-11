
;problem 1.31
(require "global.rkt")

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(define (term x) (square (/ (* x 2) (- (* x 2) 1))))
(define (next x) (+ x 1))
(* (product term 2 next 100) 2 (/ 1 (* 100 2)) 4)
