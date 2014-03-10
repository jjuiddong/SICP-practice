
;problem 1.25
;very slow~
(define (square x) (* x x))

(define (fast-expt base exp)
  (cond ((= exp 0) 1)
        ((even? exp) (square (fast-expt base (/ exp 2))))
        (else (* base (fast-expt base (- exp 1))))))


;fermat test
(define (expmod base exp m)
  (remainder (fast-expt base exp) m))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

; timed-prime-test
(define (timed-prime-test n)
   ;(newline)
   ;(display n)
   (start-prime-test n (current-inexact-milliseconds)))

(define (start-prime-test n start-time)
  (if (fast-prime? n 3)
;     (prime? n)
      (report-prime n (- (current-inexact-milliseconds) start-time))))

(define (report-prime n elapsed-time)
  (newline)
  (display n)
  (display " *** ")
  (display elapsed-time))

(define (search-for-prime a b)
  (define (iter n)
    (cond ((< n b)
           (timed-prime-test n)
           (iter (+ n 1)))
          (else (display "end"))))
  (iter a))


(search-for-prime 1000 10000)
