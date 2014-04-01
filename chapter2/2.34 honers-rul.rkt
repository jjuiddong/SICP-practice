;problem 2.34
;honers rule
(require "global.rkt")

(define (honer-eval x coefficient-sequence)
  (accumulate (lambda (this-coeff higher-terms)
                (+ (* higher-terms x) this-coeff))
              0
              coefficient-sequence))

(honer-eval 2 (list 1 3 0 5 0 1))

