;Helper functions:

;Get cubed result of x.
(define (cube x) (* x x x))

;Get squared result of x.
(define (square x) (* x x))

;Check if the absolute value of the difference
;between guess cubed and the number is less than 0.001.
(define (goodEnough? guess num)
  (< (abs (- (cube guess) num)) 0.001))

;Get the result of the number divided
;by guess squared.
(define (divStep guess num)
  (/ num (square guess)))

;Taking the result of the previous step, it's
;added to guess doubled and the sum is divided by 3.
(define (improve divResult guess)
  (/ (+ divResult (* guess 2))3))

;Implementation:

;Recursive iteration.
;If the guess is below the threshhold, guess is returned.
;Otherwise, the iteration continues to optimize the guess.
(define (cubeIter guess num)
  (if (goodEnough? guess num)
      guess
      (cubeIter (improve (divStep guess num) guess) num)))

;Starting the cube root process.
(define (cubeRoot num)
  (cubeIter 1.0 num))
