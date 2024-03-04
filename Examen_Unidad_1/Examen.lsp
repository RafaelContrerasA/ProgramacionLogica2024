;1

(defun sumNums(num)
    (if (= num 0) 
        0
        (+ num (sumNums (- num 1)))
    )
)

;2
(defun sumPares(num)
    (if (= num 0) 
        0
        (progn
            (if (= (mod num 2) 0)
                (+ num (sumPares (- num 1))) 
                (sumPares (- num 1))            
            )
                   
        )
        
    )
)







;4
(defun tercerElemento(lista)
    (car(cddr lista))

)

(defparameter *lista*
                    '(a b c d e f g h)
)

;5
(defun primerUltimo(lista)
    (print `(,(car lista)) )
    (print (finalLista lista))
    (append `(,(car lista)) (finalLista lista))
    (print lista2)
)

(defun finalLista(lista)
    (if (cdr lista)
        (finalLista (cdr lista))
        lista
    )
)

