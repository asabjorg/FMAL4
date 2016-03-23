;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 1e) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (firstList lst n)
  (cond
    ((= n 0) '())
    (else (cons (car lst) (firstList (cdr lst) (- n 1))))
  )
)
(define (secondList lst n)
  (cond
    ((= n 0) lst)
    (else (secondList (cdr lst) (- n 1)))
   )
)

(define (split lst n)
  (list (firstList lst n) (secondList lst n))
)