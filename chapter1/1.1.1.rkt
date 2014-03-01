;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 1.1.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
486

(+ 137 349)

(- 1000 334)

(+ 2.7 10)

(+ (* 3 5) (- 10 6))

(define size 2)

size

(define (square x) (* x x))

(square 2)
(square (+ 2 5))

(define (abs2 x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(abs2 10)
(abs2 -11)







