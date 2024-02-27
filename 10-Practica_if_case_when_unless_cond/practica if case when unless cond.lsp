;Ejercicio 1

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

(defun vocales()
    (princ "Escriba una letra minuscula: ")
    (setq letra (read))

    (case letra ((a e i o u) (format t "La letra ~s es una vocal" letra))  
                ((y) (format t "La letra ~s es una semi-vocal" letra))
                (otherwise (format t "La letra ~s es una consonante" letra))  
    )
)

(defun bisiesto()
    (princ "Escriba un año: ")
    (setq anio (read))

    (if (or (and (= (mod anio 4) 0) (/= (mod anio 100) 0))  (= (mod anio 400) 0))
        (format t "El año ~d es bisiesto" anio)
        (format t "El año ~d no es bisiesto" anio))
)

(defun diasdelmes()
    (princ "Escriba el numero del mes: ")
    (setq mes (read))

    (case mes ((2) (format t "El mes ~d tiene 28 dias" mes))
              ((4 6 9 11) (format t "El mes ~d tiene 30 dias" mes))  
              ((1 3 5 7 8 10 12) (format t "El mes ~d tiene 31 dias" mes))                 
              (otherwise (print "MES ERRONEO"))  
    )
)



