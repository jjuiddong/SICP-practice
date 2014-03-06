
;problem 1.17

(define (multi a b)
  (if (= b 0)
      0
      (+ a (multi a (- b 1)))))

(define (double a) (* a 2))
(define (halve a) (/ a 2))

(define (fast-multi a b)
  (define (iter a b n)
    (cond ((= n 0) 0)
          ((= n 1) (+ a b))
          ((even? n) (iter a (double b) (halve n)))
          (else (iter (+ a b) b (- n 1)))))
  (iter 0 a b))


(multi 2 5)
(fast-multi 2 3)
(fast-multi 2 4)
(fast-multi 2 5)
(fast-multi 2 6)
(fast-multi 10 11)
(fast-multi 11 10)
