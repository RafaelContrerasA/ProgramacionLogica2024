# Ejercicios con listas usando (car) y (cdr)

## Lista 1

 


```lisp
'(a b c d f g h)
```

```lisp
;1 obtener H
(car (cddr (cddddr '(a b c d f g h))))


;2 obtener G
(car (cdr (cddddr '(a b c d f g h))))


;3 obtener F
(car (cddddr '(a b c d f g h)))


;4 obtener C
(car (cddr '(a b c d f g h))  )
```


## Lista 2

```lisp
'( (a) (b d) (( 1 2 ) 3) )
```

```lisp
;1 obtener D
(car (cdr (car (cdr '( (a) (b d) (( 1 2 ) 3) )))))


;2 obtener 2
(car (cdr (caar (cddr '( (a) (b d) (( 1 2 ) 3) )))))


;3 obtener (1,2)
(caar (cddr '( (a) (b d) (( 1 2 ) 3) )))


;4 obtener (3)
(cdr (car (cddr '( (a) (b d) (( 1 2 ) 3) ))))
```


## Lista 3

```lisp
'( (1 2 3)  ((4 5 6))  (((7 8 9 10))) )
```

```lisp
;1 obtener 4
(caaar (cdr '( (1 2 3)  ((4 5 6))  (((7 8 9 10))) )))

;2 obtener 7
(caaaar (cddr '( (1 2 3)  ((4 5 6))  (((7 8 9 10))) )))

;3 obtener 3
(car (cddr(car '( (1 2 3)  ((4 5 6))  (((7 8 9 10))) ))))

;4 obtener 10
(car (cdddr (caaar (cddr '( (1 2 3)  ((4 5 6))  (((7 8 9 10))) )))
))
```