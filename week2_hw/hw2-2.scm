;This function accepts another function and a list
;as arguments and recursively iterates through a list
;manipulating each element using the function argument.

(define (every fn someList)
  (if (empty? someList)
      '()
      (cons (fn (first someList))
            (every fn (bf someList)))))
