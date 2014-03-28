;problem 2.32
;subset

(define (subsets s)
  (if (null? s)
      (list null)
      (let ((rest (subsets (cdr s))))
        (append rest (map 
                      (lambda (x) (cons (car s) x)) 
                      rest)))))

(subsets (list 1 2 3))
