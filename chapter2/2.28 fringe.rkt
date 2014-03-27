;problem 2.28
;fringe

(define (fringe items)
  (cond ((null? items) null)
        ((pair? items)
         (append (fringe (car items))
                 (fringe (cdr items))))
        (else
         (list items))))

(fringe (list 1 2 3 4 (list 5 6 7)))
