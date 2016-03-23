;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname project2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (maxElement lis)
    (cond 
       ((null? (cdr lis)) (car lis))
       (else (max (car lis) (maxElement (cdr lis))))
    )
)

(define (elementAtIndex lis n)
    (cond
       ((null? (cdr lis)) (car lis))
       ((= n 1)(car lis))
       (else (elementAtIndex (cdr lis) (- n 1)))
    )
)

(define (compress lis)
   (cond
       ((null? lis) '())
       ((null? (cdr lis)) lis)
       ((eq?(car lis)(car (cdr lis))) (compress(cdr lis)))
       (else (cons(car lis)(compress(cdr lis))))
   )
)

(define (maxofmax lis)
 (maxElement(map maxElement lis))
  
)

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

(define (sumList lis)
   (cond
     ((null? lis) 0)
     (else(+  (car lis) (sumList(cdr lis))))
   )
)

(define (charCount sym) (string-length (symbol->string sym)))

(define (charactersPerWord lis)
  (map charCount lis)
)

(define (charactersPerSentence lis)
  (map sumList(map charactersPerWord lis))
)

(define (wordsPerSentence lis)
  (map length lis)
)

(define (statsDocument lis)
  (list (sumList(charactersPerSentence lis))
        (sumList(wordsPerSentence lis))
        (length lis)
   )
 )


(maxElement '(5 3 7 2 6 1 4))

(elementAtIndex '(a b c d e f) 4)

(compress '(a a a b b c c c d d d d e f f))

(maxofmax '((5 3 6 2) (1 6 2 7) (7 3 8 2 9) (6 2 4 1)))

(split '(a b c d e f g) 3)

(sumList '(5 4 3))

(charactersPerWord '(Scheme is so wonderful))

(charactersPerSentence '((Hello Mary) (Scheme is so wonderful) (See you later)
(John)))

(wordsPerSentence '((Hello Mary) (Scheme is so wonderful) (See you later)
(John)))

(statsDocument '((Hello Mary) (Scheme is so wonderful) (See you later)
(John)))