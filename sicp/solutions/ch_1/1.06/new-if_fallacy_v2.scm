; Explores the difference between `cond` and `if`.

; Conclusion: functions are evaluated in full, not so much the special forms
; `if` and `cond`.

; N.B. I wonder if it would be possible to write a `new-if` using lazy
; evaluation? My sense is that this would not work around the fundamental
; problem, as all that it would do is create a memory leak with thunks.
; Still, it's worth considering.

(define (new-if if-stmnt then-stmnt else-stmnt)
  (cond (if-stmnt then-stmnt)
        (else else-stmnt)))

(new-if (= 1 1)
        (display "New-Then statement\n")
        (display "New-Else statement\n"))
; Expected: "New-Then statement"
; Result: New-Then statement\nNew-Else statement"

(if (= 1 1)
  (display "Old-then statement\n")
  (display "Old-else statement\n"))
; Expected: "Old-then statement"
; Result: "Old-then statement"

(cond ((= 1 1) (display "Old-Then statement\n"))
      (else (display "Old-Else statement\n")))
; Expected: "Old-then statement"
; Result: "Old-then statement"
