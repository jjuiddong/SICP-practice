
;problem 1.45
(require "global.rkt")

(define (average-damp f)
  (lambda (x)
    (average x (f x))))

(define (sqrtn x n)
  (fixed-point
   (repeated
    (average-damp 
     (lambda (y) (/ x (expt y (- n 1)))))
    n)
   1.0))
  
(sqrtn 27 4)
