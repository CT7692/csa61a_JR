;Question: Consider a function "g" that returns 3 with this expression:
;((g) 1)
;How many arguments does g have, and what type of value is returned?

(define (g) (lambda (x) (+ x 2)))

;Explanation: "g" has only 1 argument, which is "x". Furthermore, lambda functions return expressions.
; In this case, "g" is returning an expression that returns an integer.
