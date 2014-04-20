;problem 2.58
;infix expression

(define (variable? x) (symbol? x))

(define (same-variable? v1 v2)
  (and (variable? v1) (variable? v2) (eq? v1 v2)))

(define (make-sum a1 a2) 
  (cond ((and (number? a1) (number? a2)) (+ a1 a2))
        ((=number? a1 0) a2)
        ((=number? a2 0) a1)        
        (else (list a1 '+ a2))))

(define (make-product m1 m2) 
  (cond ((or (=number? m1 0) (=number? m2 0)) 0)
        ((and (number? m1) (number? m2)) (* m1 m2))
        ((=number? m1 1) m2)
        ((=number? m2 1) m1)
        (else (list m1 '* m2))))

(define (make-exponentiation base exponent)
  (list base '** exponent))

(define (base exp) (car exp))

(define (exponent exp) (caddr exp))

(define (sum? x)
  (and (pair? x) (eq? (cadr x) '+)))

(define (product? x)
  (and (pair? x) (eq? (cadr x) '*)))

(define (exponent? x)
  (and (pair? x) (eq? (cadr x) '**)))

(define (augend s) (car s))

(define (addend s)
  (if (null? (cdddr s))
      (caddr s)
      (append (append (list (car s)) '(+)) (cddr s))))

(define (multiplicand p) (car p))

(define (multiplier p) 
  (if (null? (cdddr p))
      (caddr p)
      (append (append (list (car s)) '(*)) (cddr p))))

(define (=number? exp num)
  (and (number? exp) (= exp num)))

(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp)
         (if (same-variable? exp var) 1 0))
        ((sum? exp)
         (make-sum (deriv (addend exp) var)
                   (deriv (augend exp) var)))
        ((product? exp)
         (make-sum
          (make-product (multiplier exp)
                        (deriv (multiplicand exp) var))
          (make-product (deriv (multiplier exp) var)
                        (multiplicand exp))))
        ((exponent? exp)
         (make-product
          (make-product
           (exponent exp) (make-exponentiation 
                           (base exp)
                           (- (exponent exp) 1)))
          (deriv (base exp) var)))
        (else
         (error "unknown expression type -- DERIVE" exp))))


(deriv '(3 * x) 'x)
;(deriv '(* x y (+ x 3)) 'x)
;(append (append (list) (list 1)) (list 2))

