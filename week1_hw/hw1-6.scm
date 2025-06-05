;This is a test to determine whether the "and" and "or"
;are special or standard functions in Scheme.
;Since custom functions in Scheme use the applicative order,
;all operands and operators are evaluated before applying the procedure.

;Custom "or" function:
(define (myOr firstPredicate secondPredicate)
  (cond (firstPredicate #t)
        (secondPredicate #t)
        (else #f)))

;Custom "and" function:
(define (myAnd firstPredicate secondPredicate)
  (cond ((not firstPredicate) #f)
        ((not secondPredicate) #f)
        (else #t)))

;Test predicate function for demonstration:
(define (test n msg)
  (display msg)
  (> n 0))

;When my "or" function is called:
(myOr (test 1 "First test evaluated.\n")
      (test -4 "Second test evaluated.\n"))

;Custom "or" function output:
;First test evaluated.
;Second test evaluated.
;#t

;When Scheme's "or" is called:
(or (test 1 "First test evaluated.\n")
      (test -4 "Second test evaluated.\n"))

;"or" function output:
;First test evaluated.
;#t

;The above output proves that Scheme's "or"
;is a special function, as it stopped
;evaluating predicates when the first
;test was evaluated as true.

;When my "and" function is called:
(myAnd (test -4 "First test evaluated.\n")
         (test 1 "Second test evaluated.\n"))

;Custom "and" function output:
;First test evaluated.
;Second test evaluated.
;#f

;When Scheme's "and" is called:
(and (test -4 "First test evaluated.\n")
       (test 1 "Second test evaluated.\n"))

;"and" function output:
;First test evaluated.
;#f

;The above output proves that Scheme's "and"
;is also a special function, as it stopped
;evaluating predicates when the first test
;was evaluated as false.
