## Reglas (Hermano, Tio, nieto)

Generar las reglas en base al arbol genalogico que permitan identificar si si alguien es hermano, tio o nieto de otra persona.



```prolog
#regla de los hermanos
hermano(X, Y):- (padrede(Z, X); madrede(Z, X)), (padrede(Z, Y); madrede(Z, Y)).

#regla del tio
tio(X, Y):- (padrede(Z, Y); madrede(Z, Y)), hermano(X, Z).


#regla del nieto
nieto(X, Y):-(padrede(Y, Z); madrede(Y, Z)), (padrede(Z, X); madrede(Z, X)).

``` 