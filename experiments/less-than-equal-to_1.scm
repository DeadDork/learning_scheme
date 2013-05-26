;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Comments
;
; Determines whether there is a primitive '<=' in Scheme.
;
; Conclusion: there is.
;
; N.B. Also explores white-space. Seems to be white-space agnostic!
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (abs x)
  (cond ((< x 0) (- x))
		((>= x 0) x)))

-4
(abs -4) ; 4
0

(abs 0)  ; 0
14

(abs 14) ; 4
