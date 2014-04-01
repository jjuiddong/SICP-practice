;problem 2.35
;count-leaves
(require "global.rkt")


(define (count-leaves t)
  (accumulate + 0 (map (lambda (x) 1)
                       (enumerate-tree t))))
                         
(enumerate-tree (list 1 2 3 (list 4 5 6)))
(count-leaves (list 1 2 3 (list 4 5 6)))

