
(require "global.rkt")


(define (sqrt-iter3 guess x)
  (if (good-enough2? guess x)
      guess
      (sqrt-iter3 (improve guess x)
                 x)))

(define (good-enough2? guess x)
  (< (abs (- (square guess) x)) (* x 0.001)))


; problem 1.7
(define (sqrt4 x)
  (sqrt-iter3 1.0 x))
  
  
;(sqrt4 4)
(sqrt4 0.00004)
(sqrt4 0.0000004)
(sqrt4 4)
(sqrt4 2)
 
