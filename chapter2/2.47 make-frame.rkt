;problem 2.47
;make-frame
(require (planet "sicp.ss" ("soegaard" "sicp.plt" 2 1)))

(define (make-vect x y) (cons x y))
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


(define (make-frame origin edge1 edge2)
  (list origin edge1 edge2))

(define (origin-frame f) (car f))
(define (edge1-frame f) (cadr f))
(define (edge2-frame f) (caddr f))

(define v1 (make-vect 1 2))
(define v2 (make-vect 3 4))
(define v3 (make-vect 5 6))
(define f (make-frame v1 v2 v3))

(origin-frame f)
(edge1-frame f)
(edge2-frame f)

(paint einstein)
