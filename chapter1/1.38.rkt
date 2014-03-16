
;problem 1.38
;Euler De Fractionibus Continuis

(define (con-frac n d k)
  (define (iter cnt)
    (if (= cnt k)
        (/ (n cnt) (d cnt))
        (/ (n cnt) (+ (d cnt) (iter (+ cnt 1))))))
  (iter 1))


(+ (con-frac (lambda (i) 1.0)
          (lambda (i) 
            (if (= 1 (remainder (- i 1) 3))
                (* 2 (+ (round (/ (- i 1) 3)) 1))
                1))
          100)
 2)


(log (+ (con-frac (lambda (i) 1.0)
          (lambda (i) 
            (if (= 1 (remainder (- i 1) 3))
                (* 2 (+ (round (/ (- i 1) 3)) 1))
                1))
          100)
 2))
