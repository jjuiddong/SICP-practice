
;problem 2.3

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

(define left-top (make-point 0 0))
(define right-bottom (make-point 10 10))

(define (calc-rect-dimension lt rb)
  (*
   (abs 
    (- (x-point rb)
    (x-point lt)))
   (abs
    (- (y-point rb)
       (y-point lt)))))

(define (calc-rect-round lt rb)
  (+
   (* 2
      (abs 
       (- (x-point rb)
          (x-point lt))))
   (* 2
      (abs 
       (- (y-point rb)
          (y-point lt))))))

(calc-rect-dimension left-top right-bottom)
(calc-rect-round left-top right-bottom)


; b
(define (make-rect left-top right-bottom)
  (make-segment left-top right-bottom))


  
