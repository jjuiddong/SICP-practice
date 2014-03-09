
;problem 1.20
(define (gcd2 a b)
  (if (= b 0)
      a
      (gcd2 b (remainder a b))))

(gcd2 206 40)
