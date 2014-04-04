;problem 2.41
;make-tripple
(require "global.rkt")

(define (make-tripple n)
  (flatmap (lambda (i)
             (if (< i 3)
                 null
                 (flatmap (lambda (j)
                            (if (< j 2)
                                null
                                (map (lambda (k)
                                           (list i j k))
                                         (enumerate-interval 1 (- j 1)))))
                          (enumerate-interval 1 (- i 1)))))
           (enumerate-interval 1 n)))

;http://www.billthelizard.com/2011/05/sicp-240-241-nested-mappings.html
(define (make-tripple2 n)
  (flatmap (lambda (i)
             (flatmap (lambda (j)
                        (map (lambda (k)
                               (list i j k))
                             (enumerate-interval 1 (- j 1))))
             (enumerate-interval 1 (- i 1))))
           (enumerate-interval 1 n)))

(make-tripple2 3)
(make-tripple2 4)
(make-tripple2 5)
