; Explores how `new-if` and `if` are different.

; Conclusion: the problem is that expressions are evaluated fully, such that
; even the false branch of `new-if` is evaluated. `if` gets around that by
; being a special form--as does `cond`. CF <new-if_fallacy_v2.scm>.

(define (sqrt_ x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
               x)))

(define (new-if if-stmnt then-stment else-stmnt)
  (cond (if-stmnt then-stment)
        (else else-stmnt)))

(define (good-enough? guess x)
  (< (abs
       (- (square guess)
          x))
     0.01))

(define (square x)
  (* x x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y)
     2))
