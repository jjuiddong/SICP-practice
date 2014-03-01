;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |1.3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))

(define (square x) (* x x))
(define (sum-of-square a b) (+ (square a) (square b)))

(define (func a b c)
  (if (> a b)
      (if (> b c)
          (sum-of-square a b)
          (sum-of-square a c))
      (if (> a c)
          (sum-of-square a b)
          (sum-of-square b c))))

(func 1 2 3)
(func 1 3 2)
(func 2 1 3)
(func 2 3 1)
(func 3 1 2)
(func 3 2 1)
