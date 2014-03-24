; Unlike C, Scheme recurses really well. I did 1E7 recursions in 5 seconds
(define (recursion-test recursions)
  (if (< recursions 1)
    "Done!"
    (recursion-test (- recursions 1))))
