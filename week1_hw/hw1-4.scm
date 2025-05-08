;This is a predicate that recursively iterates through a list of numbers
;that returns true if they're in ascending order and false otherwise.

(define (orderIter numList)
  (cond ((< (first numList) (last numList)) #t)
        ((< (first numList) (first (bf numList)))
         (orderIter (bf numList)))
        ((> (first numList) (first (bf numList)))
         #f)))

(define (ordered? myList)
  (orderIter myList))
