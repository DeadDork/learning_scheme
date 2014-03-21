(define (sqrt radicand)
  (sqrt-iter 1.0 radicand))

(define (sqrt-iter guess radicand)
  (if (good-enough? guess radicand)
    guess
    (sqrt-iter (improve guess radicand)
               radicand)))

(define (good-enough? guess radicand)
  (< (abs (- (square guess) radicand)) 0.001))

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
