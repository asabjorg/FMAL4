;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 1b) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (elementAtIndex lis n)
    (cond
       ((null? (cdr lis)) (car lis))
       ((= n 1)(car lis))
       (else (elementAtIndex (cdr lis) (- n 1)))
    )
)


(elementAtIndex '(a b c d e f) 4)