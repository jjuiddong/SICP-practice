;problem 2.36
;accumulate-n
(require "global.rkt")

;me
(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      null
      (cons (accumulate op init 
                        (accumulate
                         (lambda (x y)
                           (cons (car x) y))
                         null
                         seqs))
                        (accumulate-n op init
                                      (accumulate
                                       (lambda (x y)
                                         (cons (cdr x) y))
                                       null
                                       seqs)))))

; http://www.billthelizard.com/2011/04/sicp-236-237-matrix-algebra.html
(define (accumulate-n2 op init seqs)
  (if (null? (car seqs))
      null
      (cons (accumulate op init (map car seqs))
            (accumulate-n2 op init (map cdr seqs)))))
             

(define seqs (list (list 1 2 3) (list 4 5 6) (list 7 8 9) (list 10 11 12)))
(accumulate-n + 0 seqs)
(accumulate-n2 + 0 seqs)

                                      