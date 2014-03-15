
;problem 1.34
(require "global.rkt")

(define (f g) (g 2))


(f square)
(f (lambda (z) (* z (+ z 1))))
(f f)
