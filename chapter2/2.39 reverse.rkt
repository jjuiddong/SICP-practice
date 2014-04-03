;problem 2.39
;reverse

(require "global.rkt")

(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
        result
        (iter (op result (car rest))
              (cdr rest))))
  (iter initial sequence))

(define (fold-right op initial sequence)
  (accumulate op initial sequence))


(define (reverse2 sequence)
  (fold-right (lambda (x y) (append y (list x))) null sequence))

(define (reverse3 sequence)
  (fold-left (lambda (x y) (cons y x)) null sequence))

(reverse2 (list 1 2 3 4))
(reverse3 (list 1 2 3 4))

