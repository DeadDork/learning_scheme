;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Explores ways of giving multiple commands.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define x 0)

; Works
(define x (+ x 1))
x

; Doesn't work
(define (mult x)
  (define x (+ x 1))
  (define x (+ x 1))
  (define x (+ x 1)))

; Doesn't work
(define a 1)
a
(mult a)
a