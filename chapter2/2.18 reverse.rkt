
;problem 2.18
(define (reverse2 list1)
  (if (null? list1)
      null
      (append (reverse2 (cdr list1)) (list (car list1)))))

(reverse2 (list 1 2 3 4))
