;This function returns a new list of all words in a sentence
;ending with the letter e.

(define (endsEIter words)
  (cond ((empty? words) '())
        ((eq? (last (first words)) 'e)
         (cons (first words) (endsEIter (bf words))))
        (else (endsEIter (bf words)))))

(define (endsE ePhrase)
  (endsEIter ePhrase))
