(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; f(a,b) = if b > 0, then add a & b, else subtract b from a