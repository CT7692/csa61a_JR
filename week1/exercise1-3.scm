;Exercise 1.3: Define procedure that takes three numbers as arguments
;and returns the sum of the squares of the two larger numbers.

;Helper functions:
(define (square x) (* x x))

(define (sumSquares x y)
  (+ (square x) (square y)))

;Implementation
(define (sumLargerSquares a b c)
  (cond ((and (< a b) (< a c)) (sumSquares b c))
        ((and (< b a) (< b c)) (sumSquares a c))
        ((and (< c a) (< c b)) (sumSquares a b))
        )
  )
