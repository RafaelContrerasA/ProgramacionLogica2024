## Ejercicio 1

Una tienda que vende pantalones Dickies al menudeo y al mayoreo tiene las siguientes tarifas, si se compran menos de 5 pantalones estos se cobran a su precio normal, en caso de que se copren 5 o mas pero menos de 12 , se les descuenta el 15% en cada pantalon, si se compran mas de 12 se les descuenta 30% en cada pantalon. Escriba un programa que pida como dato de entrada el numero de pantalones que se desean comprar y con ello imprima el total a pagar por la compra hecha.
```lisp
(defun pantalones()
    (setq precio 100)

    (princ "Ingrese cantidad de pantalones: ")    
    (setq cantidad (read))

    (cond  ((< cantidad 5) 
                    (setq total (* precio cantidad))
                    )
           ((< cantidad 12) 
                    (setq total (* (* precio cantidad) 0.85))

                    )
           ((>= cantidad 12) 
                    (setq total (* (* precio cantidad) 0.70))
                    )   
    )
    
    (format t "El total es: ~f" total)

)
```

## Ejercicio 2
Escriba un programa para determinar si un solicitante puede lograr un préstamo. Deberá pedir los siguientes datos para cada solicitante: Nombre, historia crediticia(‘b’buena o ‘m’ mala), cantidad pedida, salario anual, y valor de otras propiedades.  El banco solo considerará a los solicitantes con un estado de crédito bueno.  De aquellos, solo aceptara los que tengan mas de 6 puntos. Los puntos se obtienen como sigue: 5 puntos si el salario es 50% del préstamo o más.  3 puntos si el salario es por lo menos 25% pero menos de 50% del préstamo.  1 punto si el salario es por lo menos 10% pero menos de 25% del préstamo.  5 puntos si se tiene otra propiedad del doble del préstamo o mas.  3 puntos si se tiene otra propiedad igual al préstamo pero menor del doble.
```lisp
(defun prestamo()
    (princ "Escriba su nombre: ")
    (setq nombre (read))
    (princ "Escriba su historia crediticia ('b' o 'm'): ")
    (setq historia (read))
    (princ "Escriba la cantidad de prestamo que desea pedir: ")
    (setq prestamo (read))
    (princ "Escriba su salario anual: ")
    (setq salario (read))
    (princ "Escriba el valor de sus otras propiedades: ")
    (setq propiedades (read))
    
    (case historia ((b) (setq puntos 0)
    
                        ;puntos de salario                        
                        (unless (< salario (* prestamo 0.5))
                            (setq puntos (+ puntos 5))
                        )
                        
                        (when (and (< salario (* prestamo 0.5))   (>= salario (* prestamo 0.25))    )
                            (setq puntos (+ puntos 3))
                        )
                        
                        (when (and (< salario (* prestamo 0.25))   (>= salario (* prestamo 0.10))    )
                            (setq puntos (+ puntos 1))
                        )
                        
                        ;puntos de propiedades
                        (when (>= propiedades (* prestamo 2) )
                            (setq puntos (+ puntos 5))
                        )
                        
                        (when (and (< propiedades (* prestamo 2))  (>= propiedades prestamo ) )
                            (setq puntos (+ puntos 3))
                        )
                        
                        (if (> puntos 6)
                            (format t "Credito autorizado, se tienen ~d puntos" puntos) 
                            (format t "Credito no autorizado, se tienen ~d puntos" puntos)                         
                        )    
                    )  
                   ((m) (print "Credito denegado"))
                   (otherwise (print "HISTORIA INCORRECTA"))  
    )
)
```

## Ejercicio 3
Escriba un programa que pida una letra minúscula, el programa deberá imprimir si la letra es una vocal (a,e,i,o,u), semivocal (y) o una consonante.
```lisp
(defun vocales()
    (princ "Escriba una letra minuscula: ")
    (setq letra (read))

    (case letra ((a e i o u) (format t "La letra ~s es una vocal" letra))  
                ((y) (format t "La letra ~s es una semi-vocal" letra))
                (otherwise (format t "La letra ~s es una consonante" letra))  
    )
)
```

## Ejercicio 4
Para determinar si un año es bisiesto o no debe de cumplir las siguiente regla: Ser divisible entre 4 y no divisible entre 100 o bien divisible entre 400.  Escriba un programa que pida como entrada el año e imprima si el año es bisiesto o no.
```lisp
(defun bisiesto()
    (princ "Escriba un año: ")
    (setq anio (read))

    (if (or (and (= (mod anio 4) 0) (/= (mod anio 100) 0))  (= (mod anio 400) 0))
        (format t "El año ~d es bisiesto" anio)
        (format t "El año ~d no es bisiesto" anio))
)
```

## Ejercicio 5

Escriba un programa que pida el numero de mes (del 1 al 12 ) e imprima el numero de dias que tiene el mes, donde: 
• El mes 2 tiene 28 dias 
• Los meses 4,6,9 y 11 tienen 30 dias 
• Los meses 1,3,5,7,8,10 y 12 tienen 31 dias 

Si da un mes diferente a los anteriores debera imprimir el mensaje “MES ERRONEO”.

```lisp
(defun diasdelmes()
    (princ "Escriba el numero del mes: ")
    (setq mes (read))

    (case mes ((2) (format t "El mes ~d tiene 28 dias" mes))
              ((4 6 9 11) (format t "El mes ~d tiene 30 dias" mes))  
              ((1 3 5 7 8 10 12) (format t "El mes ~d tiene 31 dias" mes))                 
              (otherwise (print "MES ERRONEO"))  
    )
)
```