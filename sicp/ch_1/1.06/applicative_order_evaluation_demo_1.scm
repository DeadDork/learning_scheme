(define (p)
  (p))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

;(new-if (< 1 2) ; Fails
;        "Hello"
;        (p))

(if (< 1 2) ; Works
  "Hello"
  (p))
