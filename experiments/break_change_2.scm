(define (count-change amount)
  (cc 5 amount))

(define (cc denomination amount)
  (cond
    ((or
       (<= denomination 0)
       (< amount 0))
     0)
    ((= amount 0) 1)
    (else
      (+
        (cc (- denomination 1) amount)
        (cc denomination (- amount (denomination-value denomination)))))))

(define (denomination-value denomination)
  (cond
    ((= denomination 5) 50)
    ((= denomination 4) 25)
    ((= denomination 3) 10)
    ((= denomination 2) 5)
    ((= denomination 1) 1)
    (else 0)))
