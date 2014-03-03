
;problem 1.10

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(A 1 10) ;2^1^10
(A 2 1)
(A 2 2)
(A 2 3)
(A 2 4)  ;2^2^2^2^2
(A 3 3)  ;

(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (b n) (A 2 n))
(define (k n) (* 5 n n))
(newline)
(f 2)
(f 3)
(f 4)
(newline)

(g 2)
(g 3)
(g 4)
(newline)

(b 2)
(b 3)
(b 4)
(newline)

(k 2)
(k 3)
(k 4)

