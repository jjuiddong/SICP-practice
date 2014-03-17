
;problem 1.39
;tan x
; J.H. Lambert

(require "global.rkt")

(define (con-frac n d k)
  (define (iter cnt)
    (if (= cnt k)
        (/ (n cnt) (d cnt))
        (/ (n cnt) (- (d cnt) (iter (+ cnt 1))))))
  (iter 1))


(define (tan-cf x k)
  (/ (con-frac
   (lambda (i) (square x))
   (lambda (i) (- (* i 2) 1))
   k) x))

(tan 1)
(tan-cf 1 30)

