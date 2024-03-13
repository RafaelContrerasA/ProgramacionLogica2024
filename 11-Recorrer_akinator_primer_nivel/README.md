## Funcion para recorrer el arbol (En construcción)

```lisp
(defun recorre(lista)
    (if lista
            (progn 
            ;(setq aux lista)
            
            (format t "Tu personaje es -> ~a " (mapcar #'car lista))
            (princ "No[0]  Si[1]")
            (setq respuesta (read))

            (if (= respuesta 1)
                (recorre (car lista))
                (recorre (cdr lista))
            )                 
            )          
    )
)
```