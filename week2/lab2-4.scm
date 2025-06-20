;Question: For each expression, what must f be for the evaluation
;of the expression to not cause an error? Give a definition for
;that will not cause each expression to cause an error and say what
;the expression's value will be.

;1. f
(define f 3)
;Variable assigned to 3.

;2. (f)
(define (f) 3)
;Procedure which returns 3.

;3. (f 3)
(define f (lambda (x) (+ x 6)))
;Alternatively
(define (f x) (+ x 6))
;Procedure taking an arguemnt and adding 6 to it.

;4. ((f))
(define ((f)) 3)
;Curried procedure that returns an empty procedure and another procedure which returns 3.

;5. (((f)) 3)
(define ((f)) (lambda (x) (+ x 6)))
;Procedure of f nested in an empty procedure and another procedure that takes an argument and adds 6 to it.
