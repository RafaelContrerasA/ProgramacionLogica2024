# 20 funciones basicas de Lisp

## 1. Función suma (+)
Permite sumar 2 o mas numeros que se manden como parametro.

**Sintaxis**
```lisp
(+ num1 num2 num3 ...)
```

**Ejemplo**
```lisp
(+ 2 2 4)

8
```

## 2. Función resta (-)
Al primer numero que se mande como parametro le resta todos los demas que encuentren en la función.
**Sintaxis**
```lisp
(- num rest1 res2 ...)
```

**Ejemplo**
```lisp
(- 2 3 4)

-5
```

## 3. Función multiplicación (*)
Realiza la multiplicación de dos o más números que se pasan como parámetros.

**Sintaxis**
```lisp
(* num1 num2 num3 ...)
```

**Ejemplo**
```lisp
(* 2 3 4)

24
```

## 4. Función división (/)
Realiza la división del primer número entre los siguientes números que se pasan como parámetros.

**Sintaxis**
```lisp
(/ dividendo divisor1 divisor2 ...)
```

**Ejemplo**
```lisp
(/ 10 2 2)

2.5
```

## 5. Función potencia (expt)
Calcula la potencia de un número elevado a otro.

**Sintaxis**
```lisp
(expt base exponente)
```

**Ejemplo**
```lisp
(expt 2 3)

8
```

## 6. Función módulo (mod)
Devuelve el residuo de la división del primer número entre el segundo número.

**Sintaxis**
```lisp
(mod num divisor ...)
```

**Ejemplo**
```lisp
(mod 10 3)

1
```

## 7. Función raíz cuadrada (sqrt)
Calcula la raíz cuadrada de un número.

**Sintaxis**
```lisp
(sqrt numero)
```

**Ejemplo**
```lisp
(sqrt 15)

3.8729835
```

## 8. Función máximo (max)
Devuelve el máximo de una lista de números.

**Sintaxis**
```lisp
(max num1 num2 ...)
```

**Ejemplo**
```lisp
(max 5 10 8)

10
```

## 9. Función mínimo (min)
Devuelve el mínimo de una lista de números.

**Sintaxis**
```lisp
(min num1 num2 ...)
```

**Ejemplo**
```lisp
(min 6 25 1)

1
```

## 10. Función absoluto (abs)
Devuelve el valor absoluto de un número.

**Sintaxis**
```lisp
(abs numero)
```

**Ejemplo**
```lisp
(abs -10)

10
```

## 11. Función comparación (=)
Comprueba si todos los argumentos son iguales entre sí.

**Sintaxis**
```lisp
(= num1 num2 ...)
```

**Ejemplo**
```lisp
(= 5 5 5)

T

(= 5 5 5 6)

NIL
```

## 12. Función mayor que (>)
Comprueba si el primer número es mayor que los siguientes números.

**Sintaxis**
```lisp
(> num1 num2 ...)
```

**Ejemplo**
```lisp
(> 10 5 3)

T

(> 10 5 3 12)

NIL
```

## 13. Función menor que (<)
Comprueba si el primer número es menor que los siguientes números.

**Sintaxis**
```lisp
(< num1 num2 ...)
```

**Ejemplo**
```lisp
(< 2 5 7)

T

(< 2 5 7 1)

NIL
```

## 14. Función contar ocurrencias (count)
Cuenta el número de veces que aparece un elemento en una lista.

**Sintaxis**
```lisp
(count elemento lista)
```

**Ejemplo**
```lisp
(count 'a '(a b a c a))

3
```

## 15. Función longitud (length)
Devuelve la longitud de una lista.

**Sintaxis**
```lisp
(length lista)
```

**Ejemplo**
```lisp
(length '(a b c))

3
```

## 16. Función invertir (reverse)
Invierte el orden de los elementos en una lista.

**Sintaxis**
```lisp
(reverse lista)
```

**Ejemplo**
```lisp
(reverse '(1 2 3))

(3 2 1)
```

## 17. Función eliminar duplicados (remove-duplicates)
Elimina los elementos duplicados de una lista.

**Sintaxis**
```lisp
(remove-duplicates lista)
```

**Ejemplo**
```lisp
(remove-duplicates '(1 2 2 3 3 4 5 5 5))

(1 2 3 4 5)
```

## 18. Función sublista (subseq)
Devuelve una sublista de una lista dada.

**Sintaxis**
```lisp
(subseq lista inicio fin)
```

**Ejemplo**
```lisp
(subseq '(a b c d e) 2 4)

(C D)
```


## 19. Función buscar posición (position)
Devuelve la posición de un elemento en una lista.

**Sintaxis**
```lisp
(position elemento lista)
```

**Ejemplo**
```lisp
(position 'd '(a b c d e))

3
```

## 20. Función eliminar elemento (remove)
Elimina todas las instancias de un elemento de una lista.

**Sintaxis**
```lisp
(remove elemento lista)
```

**Ejemplo**
```lisp
(remove 'a '(a b c a d))

(B C D)
```



