;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Comments
;
; Tests a procedure that returns the square of the two largest arguments of
; three.
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; x^2
(define (square x)
  (* x x))

; x^2 + y^2
(define (addsquares x y)
  (+ (square x)
	 (square y)))

; Given any s, t, u, if s < t & s < u, then return t^2 + u^2
(define (func x y z)
  (cond ((and (<= x y) ; x <= y & x <= z
			  (<= x z))
		 (addsquares y z))
		((and (<= y x) ; y <= x & y <= z
			  (<= y z))
		 (addsquares x z))
		((and (<= z x) ; z <= x & z <= y
			  (<=   z))
		 (addsquares y z))))

4
2
2
(func 4 2 2)
