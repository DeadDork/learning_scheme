;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Comments
;
; Goes crazy `abs`.
;
; Works!
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (abs x)
  (if (< x 0)
	(- x)
	x))

-13
(abs -13) ; 13

0
(abs 0)   ; 0

18
(abs 18)  ; 18
