;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 2e) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (charCount sym) (string-length (symbol->string sym)))


(define (charactersPerWord lis)

  (map charCount lis)
)

(define (sumList lis)
   (cond
     ((null? lis) 0)
     (else(+  (car lis) (sumList(cdr lis))))
   
   )
)

(define (charactersPerSentence lis)
<<<<<<< HEAD
  (
      map sumList(map charactersPerWord lis)
  )
)
=======
  (map sumList(map charactersPerWord lis))
)

>>>>>>> a58e3c82da1723eaeb1e1968d43118b722989c32
(define (wordsPerSentence lis)

  (map length lis)
)

<<<<<<< HEAD
(define (statsDocument lst)
 
)

(statsDocument '((Hello Mary) (Scheme is so wonderful) (See you later)
(John)))
=======
(define (statsDocument lis)
  (list (sumList(charactersPerSentence lis))
        (sumList(wordsPerSentence lis))
        (length lis)
   )
 )
>>>>>>> a58e3c82da1723eaeb1e1968d43118b722989c32
