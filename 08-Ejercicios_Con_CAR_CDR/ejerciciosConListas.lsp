; '(a b c d f g h)
    ;1 obtener la h
    ;2 obtener la g
    ;3 obtener f
    ;4 obtener C

(car (cddr (cddddr '(a b c d f g h))))

(car (cdr (cddddr '(a b c d f g h))))

(car (cddddr '(a b c d f g h)))

(car (cddr '(a b c d f g h))  )


; '( (a) (b d) (( 1 2 ) 3) )
    ;1 obtener d
    ;2 obtener 2
    ;3 obtener (1,2)
    ;4 obtener (3)


(car (cdr (car (cdr '( (a) (b d) (( 1 2 ) 3) )))))

(car (cdr (caar (cddr '( (a) (b d) (( 1 2 ) 3) )))))

(caar (cddr '( (a) (b d) (( 1 2 ) 3) )))

(cdr (car (cddr '( (a) (b d) (( 1 2 ) 3) ))))


; ( (1 2 3) ((4 5 6))  (((7 8 9 10)))   )

    ;1 obtener 4
    ;2 obtener 7
    ;3 obtener 3
    ;4 obtener 10

