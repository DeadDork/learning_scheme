;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Comments
;
; Explicates a crazy compound expression.
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (a-plus-abs-b a b)
  ((if (> b 0) ; This is crazy--it lets you easily create polymorphic code.
	 +
	 -)
   a b))

4
6
(a-plus-abs-b 4 6)

-4
-6
(a-plus-abs-b -4 -6)
