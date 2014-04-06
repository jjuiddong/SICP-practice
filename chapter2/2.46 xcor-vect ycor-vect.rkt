;problem 2.46
;xcor-vect, ycor-vect

(define (make-rect x y) (cons x y))
(define (xcor-vect v) (car v))
(define (ycor-vect v) (cdr v))

(define (add-vect v1 v2)
  (make-rect
   (+ (xcor-vect v1)
      (xcor-vect v2))
   (+ (ycor-vect v1)
      (ycor-vect v2))))

(define (sub-vect v1 v2)
  (make-rect
   (- (xcor-vect v1)
      (xcor-vect v2))
   (- (ycor-vect v1)
      (ycor-vect v2))))

(define (scale-vect v s)
  (make-rect
   (* (xcor-vect v) s)
   (* (ycor-vect v) s)))


(define v1 (make-rect 1 2))
(xcor-vect v1)
(ycor-vect v1)

(define v2 (make-rect 3 4))
(xcor-vect v2)
(ycor-vect v2)

(add-vect v1 v2)
(sub-vect v1 v2)
(scale-vect v1 10)

