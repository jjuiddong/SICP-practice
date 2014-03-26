;problem 2.23
;for-each

(define (for-each2 f items)
  (cond ((null? items) (newline))
        (else (f (car items))
              (for-each2 f (cdr items)))))

(for-each2 (lambda (x) (display x)) (list 1 2 3 4))
