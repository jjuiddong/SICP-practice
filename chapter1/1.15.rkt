
; problem 1.15
(require "global.rkt")


(define (p x) 
  (display 1)
  (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

(sine 12.15)
(sine 1)
(sine 2)
(sine 3)
(sine 4)
(sine 5)
(sine 6)
(sine 7)
(sine 8)
(sine 100)
; log n 
