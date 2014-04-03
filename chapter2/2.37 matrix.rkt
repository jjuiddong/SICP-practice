;problem 2.37
;matrix

(require "global.rkt")

(define (dot-product v w)
  (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
  (map (lambda (x)
         (dot-product x v))
       m))

(define (transpose mat)
  (accumulate-n cons null mat))       

; me
(define (matrix-*-matrix2 m n)
  (let ((cols (transpose n)))
    (map (lambda (x)
           (map (lambda (y)
                  (dot-product x y))
                cols))
         m)))

;http://www.billthelizard.com/2011/04/sicp-236-237-matrix-algebra.html
(define (matrix-*-matrix m n)
   (let ((cols (transpose n)))
     (map (lambda (row) (matrix-*-vector cols row)) m)))

(define v (list 1 2 3))
(define w (list 4 5 6))
(define m (list (list 1 2 3) (list 4 5 6) (list 7 8 9)))
(define n (list (list 2 3 4) (list 5 6 7) (list 8 9 10)))

(dot-product v w)
(matrix-*-vector m v)
(transpose m)
(matrix-*-matrix m n)

;1 2 3  
;4 5 6
;7 8 9

;2 3 4
;5 6 7
;8 9 10

;2+10+24 = 36
;3+12+27 = 42
;4+14+30 = 48

;8+25+48 = 81
;12+30+54 = 96
;16+35+60 = 111
