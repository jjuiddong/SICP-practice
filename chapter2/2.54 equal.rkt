;problem 2.54
;equal

(define (equal2? a b)
  (if (and (pair? a) (pair? b))
      (and (equal2? (car a) (car b)) (equal2? (cdr a) (cdr b)))
      (if (and (not (pair? a)) (not (pair? b)))
          (eq? a b)
          #f)))
      

(equal2? '(this is a list) '(this is a list))
(equal? '(this is a list) '(this (is a) list))
(equal? '(this (is a) list) '(this (is a) list))

