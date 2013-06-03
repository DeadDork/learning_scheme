;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Explores making a loop in Scheme.
;;;
;;; Gave up half-way.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (while condition body)
  (if (not condition)
	body
	(while condition body)))

(define x 0)
x ; x = 0
(while (< x 10) (define x (+ x 1)))
x ; x = 10
