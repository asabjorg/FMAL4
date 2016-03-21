;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 2c) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
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
  (
      map sumList(map charactersPerWord lis)
  )
)

(charactersPerSentence '((Hello Mary) (Scheme is so wonderful) (See you later)
(John)))