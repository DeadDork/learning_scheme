;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Newton's method for approximating square roots, but using `new-if-then`.
;;;
;;; `new-sqrt-iter` works as well as `sqrt-iter`.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
  
(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
 (average guess (/ x guess)))

; Old square root procedure
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

; New square root procedure {{{
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause))) 

(define (new-sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))
; }}}

; Returns values from old square root procedure
(sqrt-iter 1.0 4) 
(sqrt-iter 1.0 5) 
(sqrt-iter 1.0 9) 
(sqrt-iter 1.0 10) 
(sqrt-iter 1.0 16) 
(sqrt-iter 1.0 17) 
(sqrt-iter 1.0 25) 
(sqrt-iter 1.0 26) 

; Returns values from new square root procedure
(new-sqrt-iter 1.0 4) 
(new-sqrt-iter 1.0 5) 
(new-sqrt-iter 1.0 9) 
(new-sqrt-iter 1.0 10) 
(new-sqrt-iter 1.0 16) 
(new-sqrt-iter 1.0 17) 
(new-sqrt-iter 1.0 25) 
(new-sqrt-iter 1.0 26) 
