
;problem 1.11

; recursive
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))


; iteration
(define (f-iter n)
  (define (iter a b c cnt)
    (if (< cnt 3)
        a
        (iter (+ a (* 2 b) (* 3 c)) a b (- cnt 1))))
  (iter 2 1 0 n)
  )


(f 3)
(f 4)
(f 5)
(f-iter 3)
(f-iter 4)
(f-iter 5)
