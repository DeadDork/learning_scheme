;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Comments
;;;
;;; Demonstrates my proposed solution to 1-5.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (p) p)

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p)) ; Returns 0, as expected

(test 1 (p)) ; Returns '2: #[compound-procedure 2 p]'. I have no idea what that means.

(p) ; Hangs (don't know why)

(if (= 1 1)
    (p)
    0) ; Also returns '2: #[compound-procedure 2 p]'