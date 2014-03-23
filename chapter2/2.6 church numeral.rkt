
;problem 2.6

(define zero (lambda (f) (lambda (x) x)))
(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

;(add-1 zero)
;((zero 13423) 0)

(define (inc n) (+ n 1))


; one = (add-1 zero)
; (lambda (f) (lambda (x) (f x)))
;(define one (lambda (f) (lambda (x) (f x))))

; two = (add-1 one)
;(define two (lambda (f) (lambda (x) (f (f x)))))


((zero inc) 0)
(define one (add-1 zero))
(define two (add-1 one))
((one inc) 0)
((two inc) 0)

(define (add-church m n)
   (lambda (f) (lambda (x) ((m f) ((n f) x)))))

(((add-church one two) inc) 0)
