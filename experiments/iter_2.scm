;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Very rudimentary Fizz Buzz in Scheme
;;;
;;; N.B. I'm sure there is a way to loop through, say, 1..100--I just don't
;;; know how to do it in Scheme.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (fb x)
  (cond ((and (= (modulo x 3) 0)
              (= (modulo x 5) 0))
         "Fizzbuzz")
        ((and (= (modulo x 3) 0)
              (> (modulo x 5) 0))
         "Fizz")
        ((and (> (modulo x 3) 0)
              (= (modulo x 5) 0))
         "Buzz")
        (else
         x)))
