(define (sqrt radicand)
  (sqrt-iter 1.0 2.0 radicand))

(define (sqrt-iter new-guess old-guess radicand)
  (if (good-enough2? new-guess old-guess radicand)
    new-guess
    (sqrt-iter (improve new-guess radicand)
               new-guess
               radicand)))

(define (good-enough2? new-guess old-guess radicand)
  (< (/
       (abs (-
              (square new-guess)
              radicand))
       (abs (-
              (square old-guess)
              radicand)))
     0.01))

(define (abs x)
  (if (< x 0)
    (- x)
    x))

(define (square x)
  (* x x))

(define (improve guess radicand)
  (average guess
           (/ radicand guess)))

(define (average x y)
  (/ (+ x y)
     2))
