;TASK 2:

;Read Input val
(display "Enter a Number")
(define val (read))

;sum of series
(define fib
  (lambda (n)
    (let fib ((i n))
    
    ;base case
      (cond
        ((= i 0) 0)
        ((= i 1) 1)
        
        ;recursive case
        (else (+ (fib (- i 1)) (fib (- i 2))))))))
        (fib val)
        
        
