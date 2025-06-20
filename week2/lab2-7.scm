;Question: Write a test procedure such that given
;a word, "w", as an argument, returns a procedure of
;one argument "x" that returns true if "x" is equal to "w"
;and false otherwise.

(define (makeTester w)
  (lambda (x) (eq? w x)))

;The directions above describe the use of a lambda to implement
;the equality of the "w" and "x" as lambdas are first-class procedures
;that return pointers to them.

;This is taken a step further with this simple
;example that uses the procedure above to check
;if a value matches my name.
(define isMyName (makeTester 'Joseph))
