
;problem 1.13

(define (exp2 v n)
  (if (= n 0)
      1
      (* v (exp2 v (- n 1)))))

(define (fibfunc n)
  (/ (exp2 (/ (+ 1 (sqrt 5)) 2) n) (sqrt 5)))

(define (fib-alpha n)
  (exp2 (/ (+ 1 (sqrt 5)) 2) n))

(define (fib-beta n)
  (exp2 (/ (- 1 (sqrt 5)) 2) n))

(define (fib n)
  (/ (- (fib-alpha n) (fib-beta n)) (sqrt 5)))


;1 1 2 3 5
(fibfunc 1)
(fibfunc 2)
(fibfunc 3)
(fibfunc 4)
(fibfunc 5)
(fib 1)
(fib 2)
(fib 3)
(fib 4)
(fib 5)
