
;problem 1.46
(require "global.rkt")

(define (iterative-improve g transform guess)
  (fixed-point (transform g) guess))

(define (average-damp f)
  (lambda (x)
    (average x (f x))))

(define (sqrtn x n)
  (iterative-improve
   (lambda (y) (/ x (expt y (- n 1))))
   (repeated average-damp n)
   1.0))

(sqrtn 27 4)
