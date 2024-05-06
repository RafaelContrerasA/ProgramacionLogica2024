## Crear templates Eliza
Generar 20 templates de saludo para eliza, de forma que la interaccion pueda ser mas natural.

```prolog
template([hola, me, llamo, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [3]).
template([hola, ',', me, llamo, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [4]).

template([hola, s(_) , me, llamo, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [4]).
template([hola,  s(_) , ',', me, llamo, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [5]).

template([saludos, me, llamo, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [3]).
template([saludos, ',', me, llamo, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [4]).

template([saludos, s(_) , me, llamo, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [4]).
template([saludos,  s(_) , ',', me, llamo, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [5]).

template([buenos, dias, me, llamo, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [4]).
template([buenos, dias, ',', me, llamo, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [5]).

template([buenos, dias, s(_) , me, llamo, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [5]).
template([buenos, dias, s(_) , ',', me, llamo, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [6]).

template([buenas, tardes, me, llamo, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [4]).
template([buenas, tardes, ',', me, llamo, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [5]).

template([buenas, tardes, s(_) , me, llamo, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [5]).
template([buenas, tardes, s(_) , ',', me, llamo, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [6]).

template([buenas, noches, me, llamo, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [4]).
template([buenas, noches, ',', me, llamo, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [5]).

template([buenas, noches, s(_) , me, llamo, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [5]).
template([buenas, noches, s(_) , ',', me, llamo, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [6]).


template([hola, ',', mi, nombre, es, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [5]).
template([buendia, ',', mi, nombre, es, s(_), '.'], ['Buendia', 'Como', estas, tu, 0, '?'], [5]).

template([buenos, dias, _], ['Buenos', 'dias', 'Como', estas, tu, '?'], []).
template([buenas, tardes, _], ['Buenas', 'tardes', 'Como', estas, tu, '?'], []).
template([buenas, noches, _], ['Buenas', 'noches', 'Como', estas, tu, '?'], []).


``` 
