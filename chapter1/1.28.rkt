; problem 1.28
; Miller-Rabin test

(define (square x) (* x x))

; Miller-Rabin test
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (miller-rabin-test n)
  (define (try-it a)
    (= (expmod a (- n 1) n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((miller-rabin-test n) (fast-prime? n (- times 1)))
        (else false)))


; Carmichael number
; http://en.wikipedia.org/wiki/Carmichael_number
; 561 = 3*11*17
; 1105 = 5*13*17
; 1729 = 7*13*19

(fast-prime? 7 3)
(fast-prime? 561 100)
(fast-prime? 1105 100)
(fast-prime? 1729 100)
(fast-prime? 157307 100)
(fast-prime? 100003 100)