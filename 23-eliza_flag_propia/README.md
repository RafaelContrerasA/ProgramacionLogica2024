## Crear templates Eliza
Generar 5 template para eliza que reciban 2 parametros en la oracion, y otros 5 que reciban 3 parametros.

```prolog


% pregunta lo que sabe eliza
template([conoces, la, s(_), _], [flagKnow], [2]).
template([conoces, las, s(_), _], [flagKnow], [2]).
template([sabes, sobre, la, s(_), _], [flagKnow], [3]).
template([sabes, sobre, las, s(_), _], [flagKnow], [3]).


% Lo que eliza sabe
elizaKnows(X, R):- knows(X),  R = ['Si', conozco, sobre, X].
elizaKnows(X, R):- \+knows(X),  R = ['No', desconozco, sobre, X].
knows(matematicas).
knows(biologia).
knows(programacion).
knows(espanol).
knows(ingles).
knows(quimica).


% Eliza knows:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagKnow,
	elizaKnows(Atom, R).



``` 
