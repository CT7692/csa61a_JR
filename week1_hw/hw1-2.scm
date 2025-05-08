;Recursively traverses a list of numbers replacing the element with its squared value.

(define (squaresIter numList)
  (if (empty? numList)
      '()
      (cons (* (first numList) (first numList))
      (squaresIter (bf numList)))))

(define (squares myList)
  (squaresIter myList))
