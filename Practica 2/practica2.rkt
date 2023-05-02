;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname practica2) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
;------------EJERCICIO 1------------
; Representamos x y mediante numeros
; distancia-origen : Number return Number
; Recibe las coordenadas x e y , devuelve la distancia al origen de (0,0)
; entrada: (2,3) , salida: 3,6
; entrada: (4,3) , salida: 5
; entrada: (4,4) , salida: 5,6
(define (pitagora c1 c2) (sqrt (+ (expt c1 2) (expt c2 2))) )
(define (distancia-origen x y) (if (and (number? x) (number? y)) (pitagora x y) "Tienen que ser numeros") )
(check-expect (distancia-origen 4 3) 5)

;------------EJERCICIO 2------------
; Representamos x1 y1 x2 y2 mediante numeros
; distancia-puntos : entrada number y return number
; Recibe dos coordenadas (x1,y1)(x2,y2), devuelve la distancia entre los puntos
; Entrada (1,1) (3,3) : "Distancia entre los puntos es: (2,2)"
; Entrada (1,2) (3,1) : "Distancia entre los puntos es: (1,1)"
; Entrada (5,2) (4,4) : "Distancia entre los puntos es: (1,-2)"

;------------EJERCICIO 3------------
; Representamos l (longitud del cubo) mediante el numero
; vol-cubo : entrada numero y return numero
; Recibe la longitud del cubo , devuelve el volumen del cubo
; Entrada 10 , 1000
; Entrada 5 , 125
; Entrada 8 , 512
(define (vol-cubo l) (expt l 3) )
(check-expect (vol-cubo 10) 1000)
(check-expect (vol-cubo 5) 125)
(check-expect (vol-cubo 8) 512)

;------------EJERCICIO 4------------
; Representamos l (longitud del cubo) mediante numero
; area-cubo : entrada numero y return numero
; Recibe la longitud del cubo, devuelve el area del cubo
; Entrada 10 , 100
; Entrada 5 , 25
; Entrada 8 , 64
(define (area-cubo l) (* l l) )
(check-expect (area-cubo 10) 100)
(check-expect (area-cubo 5) 25)
(check-expect (area-cubo 8) 64)

;------------EJERCICIO 5------------
; Representamos cadena (string) i (number)
; string-insert : entrada string y numero y return string
; Recibe el string y el numero y devuelve el string modificado
; Entrada "Hola mundo" 2 , "Ho-la mundo"
; Entrada "" , 
; Entrada "" , 
(define (string-insert cadena i) (string-append (substring cadena 0 i) "-" (substring cadena i (string-length cadena) ) ))
(check-expect (string-insert "Hola mundo" 2) "Ho-la mundo")

;------------EJERCICIO 6------------
; Representamos cadena como un string
; string-last : entrada string y devuelve el ultimo caracter de la cadena en string
; Entrada "Hola mundo" , "o"
; Entrada "Ivan" , "n"
; Entrada "Cecinia", "a"
(define (string-last cadena) (substring cadena ( - (string-length cadena) 1) (string-length cadena) ) )
(check-expect (string-last "Hola mundo") "o")
(check-expect (string-last "Ivan") "n")
(check-expect (string-last "Cecinia") "a")

;------------EJERCICIO 7------------
; Representamos cadena como un string
; string-remove-last : entrada string y devuelve la cadena sin el ultimo caracter
; Entrada "Hola mundo" , "Hola mund"
; Entrada "Ivan" , "Iva"
; Entrada "Cecinia", "Cecini"
(define (string-remove-last cadena) (substring cadena 0 ( - (string-length cadena) 1) ) )
(check-expect (string-remove-last "Hola mundo") "Hola mund")
(check-expect (string-remove-last "Ivan") "Iva")
(check-expect (string-remove-last "Cecinia") "Cecini")
