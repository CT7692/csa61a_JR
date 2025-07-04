;Exercise 1.31: Task was to create a recursive procedure, "product",
;akin to the "sum" procedure but done through multiplication.

;Recursive Product
(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

;Iterative Product
(define (productIter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* a result))))
  (iter a (* a a)))

;Next task is to create a factorial procedure using "product".
(define (factorial a b)
  (define (identity x) x)
  (define inc (lambda (y) (+ y 1)))
  (product identity a inc b))

;Next task is to create a procedure using "product"
;to implement Wallis' Pi approximation formula.
(define (piApprox a b)
  (define inc (lambda (y) (+ y 1)))
  (define (piTerm n)
    (define term (* 4 n n))
    (/ term (- term 1)))
  (* 2 (product piTerm a inc b)))

;Exercise 1.32: Task was to further generalize
;recursive mathematical procedures with a higher order
;procedure, "accumulate", which would take as arguments,
;a combiner function, a null value to return when
;the base case occurs, a "term" function, the lower bound
;of the range: "a", a "next" function to update "a", and
;lastly the end of the range, "b".
(define (accumulate combiner nullValue term a next b)
  (if (> a b)
      nullValue
      (combiner (term a)
                (accumulate combiner nullValue
                            term (next a) next b))))

;Exercise 1.33: Task was to generalize recusive mathematical
;operations even further by making a procedure that
;does the same action as the function above, but only if the
;predicate passed as an argument is fulfilled. Such that this 
;function would be "filtered accumulation".
(define (filteredAccumulate pred comb nullValue term a next b)
  (cond
    ((> a b) nullValue)
    ((pred a) (comb (term a)
                  (filteredAccumulate
                   pred comb nullValue
                   term (next a) next b)))
    (else (filteredAccumulate
           pred comb nullValue
           term (next a) next b))))

;Exercise 1.40: Task was to define a procedure "cubic" that works
;with Newton's Method procedures defined in a different project 
;to approximate the zeros of:
; x^3 + ax^2 + bx + c
(define (cubic a b c)
  (lambda (x)
    (+ (cube x)
       (* a (square x))
       (* b x) c)))

;Exercise 1.41: Task was to define a procedure "double" that
;takes a procedure of one argument as an argument and apply it twice.
(define (double f)
  (lambda (x)
    (f (f x))))
