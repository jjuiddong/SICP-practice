
;problem 1.40

(require "global.rkt")


(define (deriv g)
  (define dx 0.00001)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x))
       dx)))

(define (newtons-transform g)
  (lambda (x)
    (- x (/ (g x) ((deriv g) x)))))

(define (newtons-method g guess)
  (fixed-point (newtons-transform g) guess))


(define (cubic a b c)
  (lambda (x)
    (+ (cube x) (* a (square x)) (* b x) c)))


(define a 4)
(define b 2)
(define c 3)
(newtons-method (cubic a b c) 1)

;answer -3.6779934833984465
;xxx+4xx+2x+3
