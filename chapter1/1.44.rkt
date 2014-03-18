
;problem 1.44
; n-fold smoothed function
(require "global.rkt")

(define (repeated f n)
  (define (iter k result)
    (if (= k n)
        result
        (iter (+ k 1) (compose f result))))
  (iter 1 f))


(define (repeated2 f x)
  (if (= x 1)
      f
      (compose f (repeated2 f (- x 1)))))


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
    

(define (n-fold-smoothed f x n)
  (define dx 0.00001)
  (define (incdx k) (+ k dx))
  (define (iter k)
    (if (= k n)
        (f (+ x (* dx (/ n 2))))
        (+ (f ((repeated incdx k) (- x (* dx (/ n 2))))) (iter (+ k 1)))))
  ;(display (repeated incdx 2))
  (/ (iter 1) n))

(n-fold-smoothed square 4 3)
;(square (repeated (lambda (x) 
((repeated2 (smooth square) 4) 4)
((repeated (smooth square) 4) 4)

