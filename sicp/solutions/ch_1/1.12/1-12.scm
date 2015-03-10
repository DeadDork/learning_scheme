(define (p-t-element column row)
  (cond
    ((or
       (= column 1)
       (= column row))
     1)
    ((or
       (> column row)
       (< column 1))
     0)
    (else (+
            (p-t-element column (- row 1))
            (p-t-element (- column 1) (- row 1))))))
