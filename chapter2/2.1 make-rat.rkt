
;problem 2.1
(require "global.rkt")


; solution
;(define (make-rat n d)
;  (let ((g (gcd n d))
;        (nn (if (> 0 (* n d)) (- (abs n))
;                 (abs n)))
;        (dd (abs d)))
;    (cons (/ nn g) (/ dd g))))


(define one-half (make-rat -1 2))
(print-rat one-half)
(define one-third (make-rat 1 3))
(print-rat (add-rat one-half one-third))
(print-rat (mul-rat one-half one-third))
(print-rat (add-rat one-third one-third))

