
;problem 2.20
;dotted-tail notation

(define (f x . z)
  (display x)
  (display z))
;(f 1 2 3 4 5)


(define (same-parity x . y)
  (define (iter list1)
    (if (null? list1)
        null
        (if (= (remainder (car list1) 2)
               (remainder x 2))
            (cons (car list1)
                  (iter (cdr list1)))
            (iter (cdr list1)))))
  
  (iter y))

(same-parity 2 1 2 3 4 5 6 7)
(same-parity 1 1 2 3 4 5 6 7)
