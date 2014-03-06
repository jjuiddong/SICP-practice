
; problem 1.18
; russian peasant method


(define (russian-multi a b)
  (define (iter a b r)
    (cond ((= a 0) r)
          ((= a 1) (+ r b))
          ((even? a) (iter (/ a 2) (* b 2) r))
          (else (iter (/ a 2) (* b 2) (+ r b)))))
  (iter a b 0)
  )

(russian-multi 2 3)
(russian-multi 2 4)
(russian-multi 2 5)
(russian-multi 2 6)
(russian-multi 11 12)
