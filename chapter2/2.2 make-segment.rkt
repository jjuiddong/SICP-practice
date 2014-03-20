
;problem 2.2

(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))

(define (make-segment s e) (cons s e))
(define (start-segment s) (car s))
(define (end-segment s) (cdr s))

(define (midpoint-segment s)
  (make-point 
   (/ (+ (x-point (start-segment s))
         (x-point (end-segment s)))
     2)
   (/ (+ (y-point (start-segment s))
         (y-point (end-segment s)))
     2)))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define start (make-point 0 0))
(define end (make-point 10 10))

(print-point
 (midpoint-segment (make-segment start end)))

