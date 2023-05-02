;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ejercicioPapel1) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(define (c2 x)
(cond [(even? x) "resultado 2"]
[(>= x 0) "resultado 1"]
[else "resultado 3"]))

(define (c1 x)
(cond [(>= x 0) "resultado 1"]
[(even? x) "resultado 2"]
[else "resultado 3"]))

(define (divisible? x n)
(= (modulo x n) 0))

(define (anio x) (divisible? x 4) )
(define (anio2 x) (if (divisible? x 100) "Año Secular" (if (divisible? x 4) "Año Bisiesto" "Año normal" ) ) )
(define (anio3 x) (cond [(divisible? x 100) "Año Secular"]
                        [(divisible? x 4) "Año Bisiesto"]
                        [else "Año normal"]) )
