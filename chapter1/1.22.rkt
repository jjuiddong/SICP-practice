
;problem 1.22
(require "global.rkt")


(define (timed-prime-test n)
   (newline)
   (display n)
   (start-prime-test n (current-inexact-milliseconds)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (current-inexact-milliseconds) start-time))))

(define (report-prime elapsed-time)
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
