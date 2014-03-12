
;problem 1.33
(require "global.rkt")

(define (filtered-accumulate filter combiner null-value term a next b)
  (if (> a b)
      null-value
      (if (filter a)
          (combiner (term a)
                    (filtered-accumulate filter combiner null-value term (next a) next b))
          (filtered-accumulate filter combiner null-value term (next a) next b))))

;a
(define (next x) (+ x 1))
(filtered-accumulate prime? + 0 square 0 next 5)
; 1,2,3,5
; 1+4+9+25 = 39


;b
(define (product-disjoint n)
  (define (identity x) x)
  (define (filter x) (= (gcd x n) 1))
  (filtered-accumulate filter * 1 identity 1 next n))

(product-disjoint 5)
; 1,2,3,4
; 1*2*3*4 = 24
