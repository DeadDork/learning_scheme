;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Demonstrates the problem with `new-if`.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause))) 

(define (p) (p)) 

(define x 1)  
;(define x 2)  

(new-if (= x 1)
        x
        (p)) 

(if (= x 1)
        x
        (p)) 
