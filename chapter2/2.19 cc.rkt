
;problem 2.19

(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else
         (+ (cc amount
                (except-first-denomination coin-values))
            (cc (- amount
                   (first-denomination coin-values))
                coin-values)))))

(define (except-first-denomination list1)
  (cdr list1))

(define (first-denomination list1)
  (car list1))

(define (no-more? list1)
  (empty? list1))


(define us-coins (list 50 25 10 5 1))
(define uk-coins (list 100 50 25 10 5 2 1 0.5))

(cc 100 us-coins)
(cc 100 (reverse us-coins))
(cc 100 uk-coins)
