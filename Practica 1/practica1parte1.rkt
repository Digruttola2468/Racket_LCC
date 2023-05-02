;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname practica1parte1) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(define ejemplo
  ( place-image (rectangle 90 30 "solid" "red")
                             45 55
(place-image (circle 10 "solid" "blue")
                                          45 45
(empty-scene 90 60))))

(define peru
  ( place-image (rectangle 60 120 "solid" "red") 0 0
                (place-image(rectangle 40 120 "solid" "red") 80 0 (empty-scene 90 60)))
  )
(define italia
  ( place-image (rectangle 60 120 "solid" "green") 0 0
                (place-image(rectangle 40 120 "solid" "red") 80 0 (empty-scene 90 60)))
  )
(define (banderaVertical a c)
  ( place-image (rectangle 60 120 "solid" a) 0 0
                (place-image(rectangle 40 120 "solid" c) 80 0 (empty-scene 90 60)))
  )
(define (banderaHorizontal a b c)
  ( place-image (rectangle 200 20 "solid" a) 0 10
                (place-image(rectangle 200 20 "solid" b) 0 30
                (place-image(rectangle 200 20 "solid" c) 0 50
                            (empty-scene 90 60)))
  )
  )
(define argentina
  ( place-image (rectangle 200 20 "solid" "blue") 0 10
                (place-image(circle 8 "solid" "yellow") 45 30
                (place-image(rectangle 200 20 "solid" "white") 0 30
                (place-image(rectangle 200 20 "solid" "blue") 0 50
                
                            (empty-scene 90 60)))
  )
  )
  )