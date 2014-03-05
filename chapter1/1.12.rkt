;problem 1.12
; pascal's triangle

(define (pascals-triangle n)
  (define (number row col)
    (cond ((> col row) 0)
          ((= row 0) 1)
          ((= col 0) 1)          
          (else 
           (+ (number (- row 1) (- col 1))
              (number (- row 1) col)))))
  
 (define (disp-line row col n)
   (cond ((> col n) (newline))
         (else (display (number row col))
               (display " ")
               (disp-line row (+ col 1) n))
         ))

  (define (disp-iter row cnt)
    (cond ((> cnt row)
           (disp-line row 0 row)
           (disp-iter (+ row 1) cnt))))
  
  (disp-iter 0 n)
 )

(pascals-triangle 5)
