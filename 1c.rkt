;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 1c) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (compress lis)
   (cond
     ((null? (cdr lis)) #t)
     ((eq? (car lis)(car (cdr lis))) #f)
      (else (compress(cdr lis)))
    )
   )

  

(compress '(5 6 7 7 ))