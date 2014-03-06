
;problem 1.16
(require "global.rkt")


(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))


(define (fast-expt2 b n)
  (define (iter a b cnt)
    (cond ((= cnt 0) 1)
          ((= cnt 1) a)
          ((even? cnt) (iter (* a b b) b (/ cnt 2)))
          (else (iter (* a b) b (- cnt 1)))))
  (iter 1 b n))
    
(fast-expt 2 16)
(fast-expt2 2 3)
(fast-expt2 2 4)
(fast-expt2 2 16)
