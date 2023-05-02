;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Practica 3 (ejercicio 2) - Programación I|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define LADO_PANTALLA 300)

; color-circulo : Number -> String
; Determina el color del circulo dependiendo de su tamaño
(define (color-circulo n) (cond [(<= n 50) "yellow"]
                                [(<= n 100) "red"]
                                [else "green"]
                          )
)

; interpretar : Number -> Image
; transforma el estado del sistema en una imagen a mostrar a través
; de la clausula to-draw
(define (interpretar n)
        (place-image (circle n "solid" (color-circulo n))
                     (/ LADO_PANTALLA 2) (/ LADO_PANTALLA 2)
                     (empty-scene LADO_PANTALLA LADO_PANTALLA)
        )
)

; manejarTeclado : Number String -> Number
(define (manejarTeclado n k) (cond [(key=? k " ") -1]  ; Finalizar el programa con espacio
                                   [(string-numeric? k) (* 10 (string->number k))]
                                   [else n]
                             )
)

; terminar : Number -> Boolean
; Decide si se debe terminar o no el programa
; En este caso, si supera 110 o es menor a 10
(define (terminar? n) (or (> n 110) (< n 10)))

; decrementar : Number -> Number
; Devuelve el predecesor de un número positivo.
; Si el número es 0, devuelve 100.
(define (decrementar n) (modulo (+ (- n 1) 101) 101))

; incrementar : Number -> Number
; Suma uno a su argumento
; Si el argumento supera la mitad de LADO_PANTALLA, devuelve 0.
(define (incrementar n) (modulo (+ n 1) (+ (/ LADO_PANTALLA 2) 1)))

; El estado está compuesto por el tamaño del circulo y un booleano que indica
; si el círculo debe incrementar (true) o decrementar (false) su tamaño a lo
; largo del tiempo
(big-bang 300
          [to-draw interpretar]
          [on-tick decrementar]
          [on-key manejarTeclado]
          [stop-when terminar?]
)