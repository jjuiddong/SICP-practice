;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname global) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))

;chapter2, global
(require racket/base)

(define (square x) (* x x))


(define (make-rat n d)
  (let ((g (gcd n d))
        (nn (if (> 0 (* n d)) (- (abs n))
                 (abs n)))
        (dd (abs d)))
    (cons (/ nn g) (/ dd g))))

(define (numer x) (car x))
(define (denom x) (cdr x))


(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))

(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))

(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))


;2.2.3
(define (filter2 predicate sequence)
  (cond ((null? sequence) null)
        ((predicate (car sequence))
         (cons (car sequence)
               (filter2 predicate (cdr sequence))))
        (else (filter2 predicate (cdr sequence)))))


; 2.2.3
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))


; 2.2.3
(define (enumerate-interval low high)
  (if (> low high)
      null
      (cons low (enumerate-interval (+ low 1) high))))

; 2.2.2
(define (enumerate-tree tree)
  (accumulate (lambda (x y)
                (append
                 (if (pair? x)
                     (enumerate-tree x)
                     (list x))
                 y))
              null
              tree))


; export
(provide (all-defined-out))
