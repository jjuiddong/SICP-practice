
;problem 1.43
(require "global.rkt")

(define (repeated f n)
  (define (iter k result)
    (if (= k n)
        result
        (iter (+ k 1) (compose f result))))
  (iter 1 f))


; (square (square 5))
((repeated square 2) 5)
