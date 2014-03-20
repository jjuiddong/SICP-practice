
;problem 2.5

(define (cons2 a b) (cons a b))

(define (car2 x)
  (expt 2 (car x)))
(define (cdr2 x)
  (expt 3 (cdr x)))


(car2 (cons2 3 4))
(cdr2 (cons2 3 4))
