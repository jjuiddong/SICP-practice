
(define (square x) (* x x))
(define (cube x) (* x x x))

(define (sqrt-cube-iter guess x)
  (if (cube-good-enough? guess x)
      guess
      (sqrt-cube-iter (improve-cube guess x)
                 x)))

(define (improve-cube guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cube-good-enough? guess x)
  (< (abs (- (cube guess) x)) (* x 0.001)))


(define (sqrt-cube x)
  (sqrt-cube-iter 1.0 x))


(sqrt-cube 8)
(sqrt-cube 27)
(sqrt-cube 125)

