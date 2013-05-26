;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Comments
;
; Explores whether `cond` falls through like a C `switch` statement.
;
; Conclusion: No, it does not.
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define x 15)

(cond ((< x 30) 1)
	  ((> x 10) 2)  ; Fall through 1
	  ((< x 20) 3)  ; Fall through 2
	  ((> x 12) 5)) ; Fall through 3

(- x 16) ; Just to demonstrate the new evaluation
