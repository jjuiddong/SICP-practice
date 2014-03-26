;problem 2.27
;deep-reverse
(define (deep-reverse items)
  (cond ((null? items) null)
        ((pair? (car items))
         (append 
          (deep-reverse (cdr items))
          (list (deep-reverse (car items)))))
         (else
          (append (deep-reverse (cdr items))
                 (list (car items))))))
 
(define x (list 1 2 3 4))
(define y (list 5 6 7 8))
(define z (list x y))
(define w (list x y 100 101 102))

(deep-reverse x)
(deep-reverse y)
z
(deep-reverse z)
w
(deep-reverse w)


;simple version, i love it
;http://community.schemewiki.org/?sicp-ex-2.27
(define (deep-reverse2 x) 
  (if (pair? x) 
      (append (deep-reverse2 (cdr x))  
              (list (deep-reverse2 (car x)))) 
      x))

(newline)
(deep-reverse2 x)
(deep-reverse2 y)
z
(deep-reverse2 z)
w
(deep-reverse2 w)
