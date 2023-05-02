;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname practica1parte2) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
;Ejercicio 1
(define (sgn2 x) (cond [(< x 0) -1]
                       [(= x 0) 0]
                       [(> x 0) 1]
                       [else "La cadena no se puede convertir a un numero"])
  )
;Ejercicio 2
;2
(define (isAncho img)
  (cond [(= (image-width img) (image-height img)) "Cuadrada"]
        [(> (image-width img) (image-height img) ) "Ancha"]
        [(> (image-height img) (image-width img)) "Angosta"])
  )
;4
(define (angulo a b c)
  (cond [(= a b c) "Equilatero"]
        [(or (= a b) (= b c) (= a c) ) "Isoceles"]
        [(not (or (= a b) (= b c) (= a c)) ) "Escaleno"])
  )
(define (anguloConError a b c)
  (if (>= 180 (+ a b c) ) (angulo a b c) "No corresponde")
  )
;Ejercicio 4
(define (isAnchoV2 img)
  (cond [(>= (image-height img) (* (image-width img) 2) ) "Muy Angosta"]
        [(>= (image-width img) (* (image-height img) 2) ) "Muy Ancha"]
        [(> (image-height img) (image-width img)) "Angosta"]
        [(> (image-width img) (image-height img) ) "Ancha"]
        [(= (image-width img) (image-height img) ) "Cuadrada"])
  )
;Ejercicio 5
(define (clasificar t) (cond [(< t 0) "Muy frío (MF)"]
                             [(and (>= t 0) (<= t 15)) "Frío (F)"]
                             [(and (> t 16) (<= t 25)) "Agradable (A)"]
                               [(>= t 26) "Caluroso (C)"])
  )
;Ejercicio 6 , 7
(define (sgn3 x) (cond [(number? x) (sgn2 x)]
                       [(boolean? x) (if (and x #t) (sgn2 1) (sgn2 0) )]
                       [(image? x) ( cond [(= (image-width x) (image-height x)) (sgn2 0)]
                                          [(> (image-width x) (image-height x) ) (sgn2 1)]
                                          [(> (image-height x) (image-width x)) (sgn2 -1)]
                       )]
                       [(string? x) (sgn2 (string->number x))]
                       [else "Clase no soportada por la función."]))
