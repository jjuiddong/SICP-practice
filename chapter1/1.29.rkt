
;problem 1.29, 1.30
;simpson's rule

(define (cube x) (* x x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b) dx))


(define (simpson f a b n)
  (define h (/ (- b a) n))
  (define (yk k) (+ a (* k h)))
  (define (iter k)
    (cond ((= k n) (f b))
          ((= k 0) (+ (f a) 
                        (iter (+ k 1))))
          ((even? k) (+ (* (f (yk k)) 2)
                       (iter (+ k 1))))
          (else (+ (* (f (yk k)) 4)
                   (iter (+ k 1))))))
  (* (iter 0) (/ h 3)))


;(integral cube 0 1 0.01)
(integral cube 0 1 0.0001)
(simpson cube 0 1 1000)


  ; http://community.schemewiki.org/?sicp-ex-1.29
 (define (inc n) (+ n 1)) 
  
 (define (sum term a next b) 
   (if (> a b) 
       0 
       (+ (term a) 
          (sum term (next a) next b)))) 
  
 (define (simpson-integral f a b n) 
   (define h (/ (- b a) n)) 
   (define (yk k) (f (+ a (* h k)))) 
   (define (simpson-term k) 
     (* (cond ((or (= k 0) (= k n)) 1) 
              ((odd? k) 4) 
              (else 2)) 
        (yk k))) 
   (* (/ h 3) (sum simpson-term 0 inc n))) 
  
 ;; Testing 
 (simpson-integral cube 0 1 100) 
 (simpson-integral cube 0 1 1000) 