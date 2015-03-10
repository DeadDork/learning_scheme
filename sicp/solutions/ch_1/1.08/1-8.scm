(define (cbrt radicand)
  (cuberoot-iter 1 2 radicand))

(define (cuberoot-iter old-guess new-guess radicand)
  (if (good-enough? old-guess new-guess radicand)
    new-guess
    (cuberoot-iter new-guess
                   (improve new-guess radicand)
                   radicand)))

(define (good-enough? old-guess new-guess radicand)
  (< (/ (abs (- (cube new-guess)
                radicand))
        (abs (- (cube old-guess)
               radicand)))
     0.01))

(define (cube x)
  (* x x x))

(define (abs x)
  (if (< x 0)
    (- x)
    x))

(define (improve guess radicand)
  (/ (+ (/ radicand (square guess))
        (* 2 guess))
     3))

(define (square x)
  (* x x))
