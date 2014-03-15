
;problem 1.35
(require "global.rkt")

(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

; square root
(define (sqrt3 x)
  (fixed-point (lambda (y) (average y (/ x y)))
               1.0))
  

(fixed-point cos 1.0)
(sqrt3 6)
(sqrt3 9)

; golden ratio
; http://en.wikipedia.org/wiki/Golden_ratio
(fixed-point (lambda (x) (+ 1 (/ 1 x)))
             1.0)

