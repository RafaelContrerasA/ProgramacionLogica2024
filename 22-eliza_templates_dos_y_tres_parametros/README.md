## Crear templates Eliza
Generar 5 template para eliza que reciban 2 parametros en la oracion, y otros 5 que reciban 3 parametros.

```prolog

% templates con 2 parametros
template([conoces, a, s(_), y,  s(_), '?', '.'], ['no conozco a', 0, 'ni a', 1], [2, 4]).
template([prefieres, s(_), o,  s(_), '?', '.'], ['no tengo preferencia por', 0, 'o por', 1], [1, 3]).
template([te, gusta, mas, el, color, s(_), o, el, s(_), '?', '.'], ['me gusta por igual tanto el ', 0, 'como el', 1], [6, 8]).
template([que, sabe, mejor, s(_), o, s(_), '?', '.'], ['soy un chatbot, no he podido comer', 0, 'ni', 1], [3, 5]).
template([odias, a, s(_), o, a,  s(_), '?', '.'], ['soy  un ser pacifico, no odio a', 0, 'ni a', 1], [2, 5]).


% templates con 3 parametros
template([conoces, a, s(_), ',', s(_), o,  s(_), '?', '.'], ['no conozco a', 0, 'ni a', 1, 'ni a', 2], [2, 4, 6]).
template([cual, s(_), es, mejor , s(_),  o,  s(_), '?', '.'], ['hablando de', 0, 'tanto', 1, 'como', 2, 'tienen sus puntos buenos'], [1, 4, 6]).
template([que, color, es, mas, bonito, , s(_), s(_),  o,  s(_), '?', '.'], ['todos los colores', 'tanto', 0, 'como', 1, 'como', 2, 'son lindos'], [5, 6, 8]).
template([has, escuchado, hablar, sobre, s(_), ',', s(_), o,  s(_), '?', '.'], ['no conozco a', 0, 'ni a', 1, 'ni a', 2], [4, 6, 8]).
template([odias, a, s(_), ',', s(_), o,  s(_), '?', '.'], ['soy un ser pacifico, no odio a', 0, 'ni a', 1, 'ni a', 2], [2, 4, 6]).




``` 
