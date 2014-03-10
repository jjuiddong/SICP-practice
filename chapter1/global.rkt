;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname global) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))

(require racket/base)

(define (square x) (* x x))

(define (cube x) (* x x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt-iter2 guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter2 (improve guess x)
                 x)))


(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))


; 1.1.7
(define (sqrt2 x)
  (sqrt-iter 1.0 x))

; problem 1.6
(define (sqrt3 x)
  (sqrt-iter2 1.0 x))


(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))



; problem 1.21
(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (smallest-divisor2 n)
  (find-divisor2 n 2))

; problem 1.23
(define (find-divisor2 n test-divisor)
  (define (next n)
     (cond ((= n 2) 3)
           (else (+ n 2))))   
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor2 n (next test-divisor)))))

 
(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (prime2? n)
  (= n (smallest-divisor2 n)))


(provide (all-defined-out))
