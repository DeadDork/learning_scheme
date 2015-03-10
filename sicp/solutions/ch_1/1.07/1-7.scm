; Demos the weakness of procedure `good-enough?` with very small numbers
(sqrt 0.0001) ; results in ~0.0323, but should be ~0.01
; Note that `good-enough?` stops iterating when the difference between the square of the guess & the radicand is less than 0.001. Thus, the smaller the radicand, the larger the error is going to be.

; Demos the weakness of procedure `good-enough?` with very large numbers
(sqrt 1000000000000) ; results in 1000000
(sqrt 10000000000000) ; enters an endless loop
; Note that in large numbers, the computer cannot make small distinctions between two very similar numbers. Thus, the second `sqrt` enters an endless loop, as the guesses will never be within 0.001.
