## Consultas multiples elementos eliza
Generar consultas que puedan regresar varios elementos en la respuesta.

```prolog

%preguntar hijos
template([eliza,  s(_), tiene, hijos, .], [flagHijo], [1]).

%preguntar hermanos
template([eliza,  s(_), tiene, hermanos, .], [flagHermano], [1]).


familia(X, R) :- 
    findall(Y, padrede(X, Y), Hijos),
    atomic_list_concat(Hijos, ', ', HijosStr),
    format(atom(R), 'Si los  hijos de ~w es/son: ~w.', [X, HijosStr]).

hermano(X, R) :- 
    findall(Y, hermanode(X, Y), Hermanos),
    atomic_list_concat(Hermanos, ', ', HermanosStr),
    format(atom(R), 'Si los  hermanos de ~w es/son: ~w.', [X, HermanosStr]).


%hijos
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagHijo,
    familia(Atom, R).

%hermanos
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagHermano,
    hermano(Atom, R).



``` 
