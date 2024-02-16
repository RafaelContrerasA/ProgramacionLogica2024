# Areas y Volumenees
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

## Area Prisma Triangular
```lisp
(defun areaPrismaTriangular()
    (setq areaBase (areaTriangulo))
    (princ "Dame la altura: ")
    (setq altura (read))
    (setq volumen (* areaBase altura))
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


## Title


```lisp
```

## Title


```lisp
```

## Title


```lisp
```

## Title


```lisp
```

## Title


```lisp
```

## Title


```lisp
```

## Title


```lisp
```

## Title


```lisp
```

## Title


```lisp
```

## Title


```lisp
```