;This is a function that recusively traverses a list of words
;and replaces one word in the sentence with another one.
;The words to be switched are specified in the function's parameters.

(define (substitute words old new)
  (cond ((empty? words) '())
        ((eq? (first words) old)
         (cons new (substitute (bf words) old new)))
        (else
         (cons (first words) (substitute (bf words) old new)))))
