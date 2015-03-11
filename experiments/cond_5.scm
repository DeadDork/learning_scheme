; Explores differences between `cond` and `if`.

; Conclusion: the interpreter evaluates the arguments before the expression, in
; either case.

(define (test1 p c1 c2)
  (cond (p c1)
        (else c2)))

(test1 (= 1 1) (display "1") (display "2\n"))
; Expected "1"
; Result: "12"

(test1 (= 1 2) (display "1") (display "2\n"))
; Expected "2"
; Actual "12"

(define (test2 p c1 c2)
  (if p
    c1
    c2))

(test2 (= 1 1) (display "1") (display "2\n"))
; Expected "1"
; Result: "12"

(test2 (= 1 2) (display "1") (display "2\n"))
; Expected "1"
; Actual "12"
