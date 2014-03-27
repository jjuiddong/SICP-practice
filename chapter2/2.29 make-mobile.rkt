;problem 2.29
;make-mobile
(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

(define (left-branch mobile) (car mobile))
(define (right-branch mobile) (cadr mobile))
;cons version
;(define (right-branch mobile) (cdr mobile))
(define (branch-length br) (car br))
(define (branch-structure br) (cadr br))
;cons version
;(define (branch-structure br) (cdr br))

(define (branch-weight br)
  (if (pair? (branch-structure br))
      (total-weight (branch-structure br))
      (branch-structure br)))

(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile))
     (branch-weight (right-branch mobile))))

(define (balance-mobile? mobile)
  (define (balance-torque? left right)
    (= (* (branch-length left) (branch-weight left))
       (* (branch-length right) (branch-weight right))))
  
  (define (balance-branch? br)
    (if (pair? (branch-structure br))
        (balance-mobile? (branch-structure br))
        #t))
        
  (let ((left (left-branch mobile))
        (right (right-branch mobile))
        (left-st (branch-structure (left-branch mobile)))
        (right-st (branch-structure (right-branch mobile))))
    (if (and (balance-branch? left)
             (balance-branch? right))
        (balance-torque? left right)
        #f)))
  

(define m1 (make-mobile
           (make-branch 2 3)
           (make-branch 3 
                        (make-mobile
                         (make-branch 3 3)
                         (make-branch 4 4)))))

(define m2 (make-mobile
           (make-branch 2 3)
           (make-branch 1 6)))
                        
(define m3 (make-mobile
           (make-branch 2 3)
           (make-branch 1 
                        (make-mobile
                         (make-branch 2 4)
                         (make-branch 4 2)))))


(total-weight m1)
(balance-mobile? m1)
(balance-mobile? m2)
(balance-mobile? m3)

