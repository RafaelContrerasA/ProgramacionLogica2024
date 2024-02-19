# Areas y Volumenes
Realizar en Lisp las expresiones para calcular el area y volumen de una figura.

## Area cuadrado

```lisp
(defun areaCuadrado()
    (princ "Dame la longitud de su lado: ")
    (setq lado (read))
    (setq area (expt lado 2))
    (write area)
)
```

## Volumen Cubo
```lisp
(defun volumenCubo()
    (princ "Dame la longitud de su lado: ")
    (setq lado (read))
    (setq volumen (expt lado 3))
    (write volumen)
)
```

## Area Rectangulo


```lisp
(defun areaRectangulo()
    (princ "Dame la longitud de su base: ")
    (setq base (read))
    (princ "Dame la longitud de su altura: ")
    (setq altura (read))
    (setq area (* base altura))
    area
)
```

## Volumen Prisma Rectangular
```lisp
;para cualquier prisma el area se calcula con (areaDeLaBase * altura)
(defun volumenPrismaRectangular()
    (setq areaBase (areaRectangulo)) 
    (princ "Dame la altura: ")       
    (setq altura (read))
    (setq volumen (* areaBase altura))
    volumen
)
```


## Area Triangulo
```lisp
(defun areaTriangulo()
    (princ "Dame la longitud de su base: ")
    (setq base (read))
    (princ "Dame la longitud de su altura: ")
    (setq altura (read))
    (setq area (/ (* base altura) 2))
    area
)
```

## Volumen Prisma Triangular
```lisp
(defun volumenPrismaTriangular()
    (setq areaBase (areaTriangulo))
    (princ "Dame la altura: ")
    (setq altura (read))
    (setq volumen (* areaBase altura))
    volumen
)
```


## Volumen Piramide Triangular
```lisp
(defun volumenPrismaTriangular()
    (setq areaBase (areaTriangulo))
    (princ "Dame la altura: ")
    (setq altura (read))
    (setq volumen (* (/ areaBase 3) altura))
    volumen
)
```

## Area Circulo
```lisp
(defun areaCirculo()
    (princ "Dame la longitud de su radio: ")
    (setq radio (read))
    (setq area (expt (* 3.1416 radio) 2))
    area
)
```

## Volumen Esfera
```lisp
(defun volumenEsfera()
    (princ "Dame el radio: ")
    (setq radio (read))
    (setq volumen (* (/ 4 3 ) 3.1416 (expt radio 3)) )
    volumen
)
```

## Volumen Cilindro
```lisp
(defun volumenCilindro()
    (setq areaBase (areaCirculo))
    (princ "Dame la altura: ")
    (setq altura (read))
    (setq volumen (* areaBase altura) )
    volumen
)
```

## Volumen Cono
```lisp
(defun volumenCono()
    (setq areaBase (areaCirculo))
    (princ "Dame la altura: ")
    (setq altura (read))
    (setq volumen (/ (* areaBase altura) 3) )
    volumen
)
```

## Area pentagono

```lisp
(defun areaPentagono()
    (princ "Dame la longitud de su lado: ")
    (setq lado (read))
    (princ "Dame la longitud del apotema: ")
    (setq apotema (read))
    (setq area (/(* (* lado 5) apotema) 2))
    area
)
```

## Volumen Prisma Pentagonal
```lisp
(defun volumenPrismaPentagonal()
    (setq areaBase (areaPentagono))
    (princ "Dame la altura: ")
    (setq altura (read))
    (setq volumen (* areaBase altura))
    volumen
)
```

## Volumen Dodecaedro
```lisp
(defun volumenDodecaedro()
    (princ "Dame la longitud de la arista: ")
    (setq arista (read))
    (setq volumen (* (/ 1  4) (+ 15 (* 7 (sqrt 5) )) (expt arista 3)) )
    volumen
)
```


## Area hexagono
```lisp
(defun areaHexagono()
    (princ "Dame la longitud de su lado: ")
    (setq lado (read))
    (princ "Dame la longitud del apotema: ")
    (setq apotema (read))
    (setq area (/(* (* lado 6) apotema) 2))
    area
)
```

## Volumen Prisma Hexagonal
```lisp
(defun volumenPrismaHexagonal()
    (setq areaBase (areaHexagono))
    (princ "Dame la altura: ")
    (setq altura (read))
    (setq volumen (* areaBase altura))
    volumen
)
```

## Area Rombo

```lisp
(defun areaRombo()
    (princ "Dame la longitud de la diagonal mayor: ")
    (setq dMayor (read))
    (princ "Dame la longitud de la diagonal menor: ")
    (setq dMenor (read))
    (setq area (/ (* dMayor dMenor) 2))
    area
)
```

## Area Trapecio

```lisp
(defun areaTrapecio()
    (princ "Dame la longitud de la base mayor: ")
    (setq bMayor (read))
    (princ "Dame la longitud de la base menor: ")
    (setq bMenor (read))
    (princ "Dame la altura: ")
    (setq altura (read))
    (setq area (/ (* (+ dMayor dMenor) altura) 2))
    area
)
```

## Area Elispe
```lisp
(defun areaElipse()
    (princ "Dame la longitud del semi-eje mayor: ")
    (setq sEjeMayor (read))
    (princ "Dame la longitud del semi-eje menor: ")
    (setq sEjeMenor (read))
    (setq area (* 3.1416 (* dMayor dMenor)))
    area
)
```

## Area Romboide
```lisp
(defun areaRomboide()
    (princ "Dame la longitud de su base: ")
    (setq base (read))
    (princ "Dame la longitud de su altura: ")
    (setq altura (read))
    (setq area (* base altura))
    area
)
```
