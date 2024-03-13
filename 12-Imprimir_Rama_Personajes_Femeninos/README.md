# Ejercicio en clase
De este arbol imprimir la lista de todas las hojas de los personajes femeninos


 


```lisp
 (defun obtenerFemenino(lista)
    (setq rama (car (cdr (car lista))))    
    (apply #'append (mapcar #'cadr rama)) 
 )


 (obtenerFemenino *nodes*)
 
 ;Resultado
 (ANA AZULA TOP KATARA)
```

# Arbol
```lisp
  (defparameter *nodes*  '((femenino (
                                    (aire (ana))       
                                    (fuego(azula))       
                                    (tierra(top))       
                                    (agua (katara))))
                         (masculino(
                                    (aire (Hola rayo))       
                                    (fuego(Hola fuego))       
                                    (tierra(Hola Tierra))       
                                    (agua (poder de agua))))
                         (ovni(
                               (aire (Hola rayo))       
                               (fuego(Hola fuego))       
                               (tierra(Hola Tierra))       
                               (agua (poder de agua)))
                          )
                         (aleatorio(
                                    (aire (Hola rayo))       
                                    (fuego(Hola fuego))       
                                    (tierra(Hola Tierra))       
                                    (agua (poder de agua)))
                          )
                         ))

```