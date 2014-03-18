
;problem 1.42
(require "global.rkt")

(define (compose2 f g)
  (lambda (x) (f (g x))))

(define (inc x) (+ x 1))

((compose2 square inc) 6)

