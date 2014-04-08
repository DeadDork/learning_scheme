; Timing how long it takes me to spit this out from scratch.
; 4:12

(define (count-change amount)
  (cc 5 amount))

(define (cc kinds-of-change amount)
  (cond
    ((or
       (= kinds-of-change 0)
       (< amount 0))
     0)
    ((= amount 0) 1)
    (else (+
            (cc (- kinds-of-change 1) amount)
            (cc kinds-of-change
                (- amount (denomination kinds-of-change)))))))

(define (denomination kind-of-coin)
  (cond
    ((= kind-of-coin 5) 50)
    ((= kind-of-coin 4) 25)
    ((= kind-of-coin 3) 10)
    ((= kind-of-coin 2) 5)
    ((= kind-of-coin 1) 1)))
