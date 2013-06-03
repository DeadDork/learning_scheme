;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Plays with iterating arithmetically
;;;
;;; (God fucking damnit, I finally understand this horror.)
;;;
;;; (Still can't do a Scheme Fizzbuzz to save my life.)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (iter x y)
  (if (= x y)
	x
	(iter (+ x 1) y)))
