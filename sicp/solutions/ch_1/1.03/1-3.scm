(define (square x)
  (* x x))

(define (f x y z)
  (+ (square (if (> x y) x y))
     (square (if (> y z) y z))))
