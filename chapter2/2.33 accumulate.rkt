;problem 2.33
(require "global.rkt")

;a
(define (map2 p sequence)
  (accumulate 
   (lambda (x y) (cons (p x) y))
   null 
   sequence))

;b
(define (append2 seq1 seq2)
  (accumulate
   cons
   seq2
   seq1))

;c
(define (length2 sequence)
  (accumulate 
   (lambda (x y)
     (+ y 1))
   0
   sequence))


(map2 square (list 1 2 3 4))
(append2 (list 1 2) (list 1 2 3 4))
(length2 (list 1 2 3 4))
