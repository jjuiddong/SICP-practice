
;problem 1.45
(require "global.rkt")

(define (fixed-point-transform g transform guess)
  (fixed-point (transform g) guess))

(define (average-damp f)
  (lambda (x)
    (average x (f x))))

(define (sqrtn x n)
  (fixed-point-transform
   (lambda (y) (/ x (square y)))
   average-damp   
   1.0))
  
(sqrtn 27 3)



(define (fixed-point-of-transform g transform guess)
  (fixed-point (transform g) guess))
 
(define (sq-root x)
  (fixed-point-of-transform 
   (lambda (y) (/ x y))
   average-damp
   1.0))
 
(define (average-damp f)
  (lambda (x) (average x (f x))))
 
(define (cube-root x)
  (fixed-point-of-transform (lambda (y) (/ x (square y)))
                            average-damp
                            1.0))

;(cube-root 27)
