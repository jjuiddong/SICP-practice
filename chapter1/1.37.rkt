
;problem 1.37
;k-term finite continued fraction

;a
;recursive process
(define (con-frac n d k)
  (define (iter cnt)
    (if (= cnt k)
        (/ (n k) (d k))
        (/ (n k) (+ (d k) (iter (+ cnt 1))))))
  (iter 1))

;b
;iterative process
;http://www.millersville.edu/~bikenaga/number-theory/continued-fractions/continued-fractions.html





;golden ratio
;1.61803398875
(con-frac (lambda (i) 1.0)
          (lambda (i) 1.0)
          10)

(con-frac (lambda (i) 1.0)
          (lambda (i) 1.0)
          11)


