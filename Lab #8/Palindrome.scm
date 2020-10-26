;Task 1

; use: (word " (the string input
; returns: #t if true, #f is false

(display "Enter using (word \" " )
(define (word str)
; store string in a list
  (let loop ((str (string->list str))
; reverse string in list form
             (revstr (reverse (string->list str))))
; check if string is empty
    (or (null? str)
; compare lists for equivalency
        (and (char=? (car str) (car revstr))
             (loop (cdr str) (cdr revstr))))))

