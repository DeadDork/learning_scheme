(define (p) (p)) ; if you call (p), you get an infinite regression

(define (test x y)
  (if (= x 0)
      0
      y))

; Applicative-order evaluation (i.e. tree accumulation) will result in calling (p), and thus will get caught in an infinite regress
; Normal-order evaulation (i.e. expand, then evaluate) will result in 0, as the if statement will preclude the need to evaluate (p)