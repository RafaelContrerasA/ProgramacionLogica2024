## Crear templates Eliza
Generar 5 template para eliza que reciban 2 parametros en la oracion, y otros 5 que reciban 3 parametros.

```prolog

%Con 2 parametros

template([conoces, a, s(_), y,  s(_), '?', '.'], ['no conozco a', 0, 'ni a', 1], [2, 4]).
template([prefieres, s(_), o,  s(_), '?', '.'], ['no tengo preferencia por', 0, 'o por', 1], [1, 3]).
template([te, gusta, mas, el, color, s(_), o, el, s(_), '?', '.'], ['me gusta por igual tanto el ', 0, 'como el', 1], [6, 8]).
template([que, sabe, mejor, s(_), o, s(_), '?', '.'], ['soy un chatbot, no he podido comer', 0, 'ni', 1], [3, 5]).




``` 
