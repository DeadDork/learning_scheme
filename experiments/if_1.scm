;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Comments
;;;
;;; Explores multiple statements in `if-then`.
;;;
;;; Conclusion: You can only have one (complex) expression follow the condition.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(if (= 1 1)
    1
    2
    3) ; Does not work
(RESTART 1)

(if (= 1 1)
    1
    3) ; Does work