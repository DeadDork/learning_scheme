; Explores whether the order of operations matters (i.e. whether Scheme is
; natively functional or imperative).

; Conclusion: it is imperative.

; Error:
;   fun: undefined;
;   cannot reference undefined identifier

(fun 3)

(define (fun x)
  (* x 3))
