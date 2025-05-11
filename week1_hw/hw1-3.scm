;This program recursively iterates through a list of words switching
;instances of "I" and "me" with "you". It's a fun function.
(define (switchIter phrase)
  (cond ((empty? phrase) '())
        ((eq? (first phrase) 'You)
         (cons 'I (switchIter (bf phrase))))
        ((eq? (first phrase) 'you)
         (cons 'me (switchIter (bf phrase))))
        ((or (eq? (first phrase) 'I) (eq? (first phrase) 'me))
         (cons 'you (switchIter (bf phrase))))
        (else (cons (first phrase) (switchIter (bf phrase))))))

(define (switch myPhrase)
  (switchIter myPhrase))
