;Ejercicio 1

(defun pantalones()
    (setq precio 400)

    (princ "Ingrese cantidad de pantalones: ")    
    (setq cantidad (read))

    (cond  ((< cantidad 5) 
                    (setq total (* precio cantidad))
                    (print "El total es: ")
                    (print total)
                    )
           ((< cantidad 12) 
                    (setq total (* (* precio cantidad) 0.85))
                    (print "El total es: ")
                    (print total)

                    )
           ((> cantidad 12) 
                    (setq total (* (* precio cantidad) 0.70))
                    (print "El total es: ")
                    (print total)
                    )   
    )
)

(defun vocales()
    (princ "Escriba una letra minuscula: ")
    (setq letra (read))

    (case letra ((a) (print "Es una vocal"))  
                ((b) (print "Es una vocal"))  
                ((c) (print "Es una vocal")) 
                ((d) (print "Es una vocal")) 
                ((e) (print "Es una vocal"))
                ((y) (print "Es una semivocal"))   
    )
)

(defun bisiesto()
    (princ "Escriba un año: ")
    (setq anio (read))

    (if ((or (and (= (% anio 4) 0)   (/= (% anio 100) 0) ) (= (% anio 400) 0)     ))
            (format t " ~% El anio -d es bisiesto" anio)

            (format t " ~% El anio -d no es bisiesto" anio)

    )
)

(defun diasdelmes()
    (princ "Escriba una letra minuscula: ")
    (setq letra (read))

    (case letra ((a) (print "Es una vocal"))  
                ((b) (print "Es una vocal"))  
                ((c) (print "Es una vocal")) 
                ((d) (print "Es una vocal")) 
                ((e) (print "Es una vocal"))
                ((y) (print "Es una semivocal"))   
    )
)

