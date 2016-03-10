;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 1a) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (maxElement lis)
    (cond 
       ((null? (cdr lis)) (car lis))
       (else (max (car lis) (maxElement (cdr lis))))
    )
)

(maxElement '(9 8 10 2))