#lang scheme

(define (sqrt_ x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
               x)))

(define (good-enough? guess x)
  (< (abs_
       (- (square guess)
          x))
     0.01))

(define (abs_ x)
  (if (< x 0)
    (* x -1)
    x))

(define (square x)
  (* x x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y)
     2))
