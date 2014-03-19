
;problem 1.44
; n-fold smoothed function
(require "global.rkt")




; (square (square 5))
;((repeated square 2) 5)

(define (smooth f)
  (define dx 0.00001)
  (lambda (x)
    (/ (+ 
        (f (- x dx)) 
        (f x) 
        (f (+ x dx))) 
       3)))

((smooth square) 4)


(define (n-fold-smoothed f n)
  ((repeated smooth n) f))

;(n-fold-smoothed square 4 3)
;(square (repeated (lambda (x) 
((n-fold-smoothed square 5) 4)
