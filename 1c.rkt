;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 1c) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define (compare n lst)
  (if(and(not(null? lst)) (equal? n (car lst)))
     (compare n (cdr lst))
     lst)
 )

(define (compress lis)
     (if (null? lis) '()
      (cons(car lis)(compress(compare (car lis) lis))))
)
  