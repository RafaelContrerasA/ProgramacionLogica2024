#hacer regla de los hermanos
hermano(X, Y):- (padrede(Z, X); madrede(Z, X)), (padrede(Z, Y); madrede(Z, Y)).

#hacer regla del tio
tio(X, Y):- (padrede(Z, Y); madrede(Z, Y)), hermano(X, Z).


#hacer regla del nieto
nieto(X, Y):-(padrede(Y, Z); madrede(Y, Z)), (padrede(Z, X); madrede(Z, X)).