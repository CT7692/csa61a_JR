;This is a function that iterates recursively through
;a list of characters removing duplicates and makes
;all letters in the list unique.

(define (removeDupls chars)
  (cond ((empty? chars) '())
        ((member? (first chars) (bf chars))
         (removeDupls (bf chars)))
        (else (cons (first chars) (removeDupls (bf chars))))))
