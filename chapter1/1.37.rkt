
;problem 1.37
;k-term finite continued fraction

;a
;recursive process
(define (con-frac n d k)
  (define (iter cnt)
    (if (= cnt k)
        (/ (n cnt) (d cnt))
        (/ (n cnt) (+ (d cnt) (iter (+ cnt 1))))))
  (iter 1))

;b
;iterative process
;http://www.millersville.edu/~bikenaga/number-theory/continued-fractions/continued-fractions.html
(define (con-frac2 n d k)
  (define (iter i result)
    (if (= i 1)
        (/ (n i) (+ (d i) result))
        (iter (- i 1) (/ (n i) (+ (d i) result)))))
  (iter k 0))


;golden ratio
;1.61803398875
(con-frac (lambda (i) 1.0)
          (lambda (i) 1.0)
          10)

(con-frac (lambda (i) 1.0)
          (lambda (i) 1.0)
          11)

(display "iterative")
(newline)
(con-frac2 (lambda (i) 1.0)
          (lambda (i) 1.0)
          10)

(con-frac2 (lambda (i) 1.0)
          (lambda (i) 1.0)
          11)

