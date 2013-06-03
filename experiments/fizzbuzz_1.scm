;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Rudimentary Fizz Buzz in Scheme
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
