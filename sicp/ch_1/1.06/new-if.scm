;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Tests out the `new-if` function in ex. 1.6.
;;;
;;; `new-if` seems to work as well as the `if-then-else` special form...
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
		(else else-clause))) 

;(define x 1)  
(define x 2) 

(new-if (= x 1)
        #t
        #f) 

(if (= x 1)
        #t
        #f) 
