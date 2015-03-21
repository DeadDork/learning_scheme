(define (sqrt_ radicand)
  (sqrtIter 2.0 1.0 radicand))

(define (sqrtIter oldGuess newGuess radicand)
  (if (goodEnough? oldGuess newGuess)
    newGuess
    (sqrtIter newGuess
              (improve newGuess radicand)
              radicand)))

(define (goodEnough? oldGuess newGuess)
  (and (< (abs (/ oldGuess newGuess))
          1.01)
       (> (abs (/ oldGuess newGuess))
          0.99)))

(define (improve oldGuess radicand)
  (/ (+ oldGuess
        (/ radicand oldGuess))
     2))
