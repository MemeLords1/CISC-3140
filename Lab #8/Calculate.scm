 
(display "Please enter a number: ")
(define val (read))
(display "Please enter another number: ")
(define tos (read))
(define (calculation val tos)
  (if (and (number? val) (number? tos))
      (+ val tos)
      "You Must Enter Numbers")
)
 
(calculation val tos)
