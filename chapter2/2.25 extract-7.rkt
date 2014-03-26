;problem 2.25
;extract 7
(define x1 (list 1 3 (list 5 7) 9))
(define x2 (list (list 7)))
(define x3 (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))

x1
x2
x3

(cdr (car (cdr (cdr x1))))
(car x2)
(cdr (cadr (cadr (cadr (cadr (cadr x3))))))



