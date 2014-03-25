
;problem 2.17
(define (last-pair2 list1)
  (if (null? (cdr list1))
      (list (car list1))
      (last-pair2 (cdr list1))))

(last-pair2 (list 1 2 3 4))

