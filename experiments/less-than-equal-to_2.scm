;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Comments
;
; Explores defining new strings as logical operators.
;
; Works!
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (>= x y)
  (or (> x y) (= x y)))

(define (abs x)
  (cond ((< x 0) (- x))
		((>= x 0) x)))

-4
(abs -4) ; 4

0
(abs 0)  ; 0

14
(abs 14) ; 14
