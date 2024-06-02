eliza:-	writeln('Hola , mi nombre es  Eliza tu  chatbot,
	por favor ingresa tu consulta,
	usar solo minúsculas sin . al final:'),
	readln(Input),
	eliza(Input),!.
eliza(Input):- Input == ['Adios'],
	writeln('Adios. espero poder verte ayudado.'), !.
eliza(Input):- Input == ['Adios', '.'],
	writeln('Adios. espero poder verte ayudado.'), !.
eliza(Input) :-
	template(Stim, Resp, IndStim),
	match(Stim, Input),
	% si he llegado aquí es que he
	% hallado el template correcto:
	replace0(IndStim, Input, 0, Resp, R),
	writeln(R),
	readln(Input1),
	eliza(Input1), !.

template([hola, mi, nombre, es, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [4]).
template([buendia, mi, nombre, es, s(_), '.'], ['buen dia', 'Como', estas, tu, 0, '?'], [4]).

%Inicio template propios
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

template([hola, _], ['Hola', 'como', estas, tu, '?'], []).
template([saludos, _], ['Hola', 'como', estas, tu, '?'], []).
template([buendia, _], ['Buendia', 'Como', estas, tu, '?'], []).
template([buenos, dias, _], ['Buenos', 'dias', 'Como', estas, tu, '?'], []).
template([buenas, tardes, _], ['Buenas', 'tardes', 'Como', estas, tu, '?'], []).
template([buenas, noches, _], ['Buenas', 'noches', 'Como', estas, tu, '?'], []).


template([yo, s(_), yo, soy, s(_),'.'], [por, que, 0, eres, 1, '?'], [1, 4]).
template([yo, s(_), tu, '.'], [why, do, you, 0, me ,'?'], [1]).
template([yo, soy, s(_),'.'], [porque, eres, tu, 0, '?'], [2]).


% templates con 2 parametros
template([conoces, a, s(_), y,  s(_), '?', '.'], ['no conozco a', 0, 'ni a', 1], [2, 4]).
template([prefieres, s(_), o,  s(_), '?', '.'], ['no tengo preferencia por', 0, 'o por', 1], [1, 3]).
template([te, gusta, mas, el, color, s(_), o, el, s(_), '?', '.'], ['me gusta por igual tanto el ', 0, 'como el', 1], [6, 8]).
template([que, sabe, mejor, s(_), o, s(_), '?', '.'], ['soy un chatbot, no he podido comer', 0, 'ni', 1], [3, 5]).
template([odias, a, s(_), o, a,  s(_), '?', '.'], ['soy  un ser pacifico, no odio a', 0, 'ni a', 1], [2, 5]).


% templates con 3 parametros
template([conoces, a, s(_), ',', s(_), o,  s(_), '?', '.'], ['no conozco a', 0, 'ni a', 1, 'ni a', 2], [2, 4, 6]).
template([cual, s(_), es, mejor , s(_),  o,  s(_), '?', '.'], ['hablando de', 0, 'tanto', 1, 'como', 2, 'tienen sus puntos buenos'], [1, 4, 6]).
template([que, color, es, mas, bonito,  s(_), s(_),  o,  s(_), '?', '.'], ['todos los colores', 'tanto', 0, 'como', 1, 'como', 2, 'son lindos'], [5, 6, 8]).
template([has, escuchado, hablar, sobre, s(_), ',', s(_), o,  s(_), '?', '.'], ['no conozco a', 0, 'ni a', 1, 'ni a', 2], [4, 6, 8]).
template([odias, a, s(_), ',', s(_), o,  s(_), '?', '.'], ['soy un ser pacifico, no odio a', 0, 'ni a', 1, 'ni a', 2], [2, 4, 6]).


% pregunta lo que sabe eliza
template([conoces, la, s(_), _], [flagKnow], [2]).
template([conoces, las, s(_), _], [flagKnow], [2]).
template([sabes, sobre, la, s(_), _], [flagKnow], [3]).
template([sabes, sobre, las, s(_), _], [flagKnow], [3]).

% pregunta algo que le gusta a eliza
template([te, gustan, las, s(_), _], [flagLike], [3]).
template([te, gustan, los, s(_), _], [flagLike], [3]).

		 % pregunta algo que hace eliza
template([tu, eres, s(_), _], [flagDo], [2]).
% pregunta algo que es eliza
template([que, eres, tu, s(_)], [flagIs], [2]).
template([eres, s(_), '?'], [flagIs], [2]).


%%%%%%%%%%%%%%%%%%%%% Templetes genealogico
%preguntar hijos
template([eliza,  s(_), tiene, hijos, .], [flagHijo], [1]).

%preguntar hermanos
template([eliza,  s(_), tiene, hermanos, .], [flagHermano], [1]).

%%%%%%%%%%%%%%%%%%%%% Templetes Star Rail
%preguntar quienes son de rareza
template([que, personajes, son, de, rareza,  s(_), _], [flagRareza], [5]).
template([que, personajes, tienen, rareza,  s(_), _], [flagRareza], [4]).
template([que, personajes, son, rareza,  s(_), _], [flagRareza], [4]).
template([cuales, personajes, son, de, rareza,  s(_), _], [flagRareza], [5]).
template([cuales, personajes, tienen, rareza,  s(_), _], [flagRareza], [4]).
template([cuales, personajes, son, rareza,  s(_), _], [flagRareza], [4]).


%preguntar quienes son de planeta
template([que, personajes, viven, en, el, planeta,  s(_), _], [flagPlaneta], [6]).
template([que, personajes, son, del, planeta,  s(_), _], [flagPlaneta], [5]).
template([que, personajes, pertenecen, al, planeta,  s(_), _], [flagPlaneta], [5]).
template([cuales, personajes, viven, en, el, planeta,  s(_), _], [flagPlaneta], [6]).
template([cuales, personajes, son, del, planeta,  s(_), _], [flagPlaneta], [5]).
template([cuales, personajes, pertenecen, al, planeta,  s(_), _], [flagPlaneta], [5]).


%preguntar quienes son de la via
template([que, personajes, son, de,  la, via, de, la,  s(_), _], [flagVia], [8]).
template([que, personajes, siguen, la, via, de, la, s(_), _], [flagVia], [7]).
template([que, personajes, son, de,  la, via, de,  s(_), _], [flagVia], [7]).
template([que, personajes, siguen, la, via, de,  s(_), _], [flagVia], [6]).
template([cuales, personajes, son, de,  la, via, de, la,  s(_), _], [flagVia], [8]).
template([cuales, personajes, siguen, la, via, de, la, s(_), _], [flagVia], [7]).
template([cuales, personajes, son, de,  la, via, de,  s(_), _], [flagVia], [7]).
template([cuales, personajes, siguen, la, via, de,  s(_), _], [flagVia], [6]).



%preguntar quienes son de elemento
template([que, personajes, tienen, elemento,  s(_), _], [flagElemento], [4]).
template([que, personajes, son, elemento,  s(_), _], [flagElemento], [4]).
template([que, personajes, son, de, elemento,  s(_), _], [flagElemento], [5]).
template([que, personajes, son, del, elemento,  s(_), _], [flagElemento], [5]).
template([cuales, personajes, tienen, elemento,  s(_), _], [flagElemento], [4]).
template([cuales, personajes, son, elemento,  s(_), _], [flagElemento], [4]).
template([cuales, personajes, son, de, elemento,  s(_), _], [flagElemento], [5]).
template([cuales, personajes, son, del, elemento,  s(_), _], [flagElemento], [5]).


%Preguntar si personaje es de cierta rareza
template([es, s(_), de, la, rareza, s(_), _], [flagEsRareza], [1,5]).
template([es, s(_), de, rareza, s(_), _], [flagEsRareza], [1,4]).
template([s(_), es, de, la, rareza, s(_), _], [flagEsRareza], [0,5]).
template([s(_), es, de, rareza, s(_), _], [flagEsRareza], [0,4]).


%Preguntar si personaje es de cierto planeta
template([es, s(_), del, planeta, s(_), _], [flagEsDePlaneta], [1,4]).
template([s(_), es, del, planeta, s(_), _], [flagEsDePlaneta], [0,4]).
template([s(_), proviene, del, planeta, s(_), _], [flagEsDePlaneta], [0,4]).


%Preguntar si personaje es de cierta via
template([es, s(_), de, la, via, de, la, s(_), _], [flagEsDeVia], [1,7]).
template([es, s(_), de, la, via, s(_), _], [flagEsDeVia], [1,5]).
template([s(_), es, de, la, via, de, la, s(_), _], [flagEsDeVia], [0,7]).
template([s(_), es, de, la, via, s(_), _], [flagEsDeVia], [0,5]).



%Preguntar si personaje es de cierto elemento
template([es, s(_), del, elemento, s(_), _], [flagEsDeElemento], [1,4]).
template([es, s(_), de, elemento, s(_), _], [flagEsDeElemento], [1,4]).
template([(_), es, de, elemento, s(_), _], [flagEsDeElemento], [0,4]).
template([(_), es, del, elemento, s(_), _], [flagEsDeElemento], [0,4]).




%Preguntar rareza de X personaje
template([de, que, rareza, es, s(_), _], [flagBuscarRareza], [4]).
template([que, rareza, es, s(_), _], [flagBuscarRareza], [3]).
template([que, rareza, tiene, s(_), _], [flagBuscarRareza], [3]).



%Preguntar elemento de X personaje
template([de, que, elemento, es, s(_), _], [flagBuscarElemento], [4]).
template([que, elemento, es, s(_), _], [flagBuscarElemento], [3]).
template([que, elemento, tiene, s(_), _], [flagBuscarElemento], [3]).

%Preguntar rareza de X personaje
template([de, que, planeta, es, s(_), _], [flagBuscarPlaneta], [4]).
template([de, que, planeta, proviene, s(_), _], [flagBuscarPlaneta], [4]).
template([de, donde, proviene, s(_), _], [flagBuscarPlaneta], [3]).

%Preguntar elemento de X personaje
template([de, que, via, es, s(_), _], [flagBuscarVia], [4]).
template([ que, via, es, s(_), _], [flagBuscarVia], [3]).
template([ que, via, sigue, s(_), _], [flagBuscarVia], [3]).




%Otros

template([como, estas, tu, '?'], [yo, estoy, bien, ',', gracias, por, preguntar, '.'], []).

template([yo, pienso, que, _], [bueno, esa, es, tu, opinion], []).
template([porque, _], [esa, no, es, una, buena, razon, '.'], []).
template([i, have, s(_), with, s(_), '.'], ['You', have, to, deal, with, your, 0, and, your, 1, in, a, mature, way, '.'], [2, 4]).
template([i, s(_),  _], [i, can, recommend, you, a, book, about, that, issue], []).
template([please, s(_), _], ['No', i, can, not, help, ',', i, am, just, a, machine], []). 
		 template([tell, me, a, s(_), _], ['No', i, can, not, ',', i, am, bad, at, that], []).


template(_, ['Please', explain, a, little, more, '.'], []). 




padrede(benjamin, luz).
padrede(benjamin, min).
padrede(benjamin, irma).
padrede(benjamin, esperanza).
padrede(valdemar,miguel).
padrede(valdemar, sugey).
padrede(rafaelc, rafael).
padrede(rafaelc, sean).
padrede(rafaelc, io).
padrede(min, angel).
padrede(min, ayme).
padrede(anonim, rafaelc).
padredde(anonim, marta). 

hermanode(luz, min).
hermanode(luz, irma).
hermanode(luz, esperanza).
hermanode(rafael, sean).
hermanode(rafael,io).
hermanode(miguel, sugey).
hermanode(sugey, miguel).
hermanode(ivan, hans).
hermanode(ivan, rubi).
hermanode(ivan, patricia).
hermanode(hans, ivan).
hermanode(hans, rubi).
hermanode(hans, patricia).
hermanode(rubi, ivan).
hermanode(rubi, hans).
hermanode(rubi, patricia).
hermanode(patricia, ivan).
hermanode(patricia, hans).
hermanode(patricia, rubi).
hermanode(rafaelc, marta).

familia(X, R) :- 
    findall(Y, padrede(X, Y), Hijos),
    atomic_list_concat(Hijos, ', ', HijosStr),
    format(atom(R), 'Si los  hijos de ~w es/son: ~w.', [X, HijosStr]).

hermano(X, R) :- 
    findall(Y, hermanode(X, Y), Hermanos),
    atomic_list_concat(Hermanos, ', ', HermanosStr),
    format(atom(R), 'Si los  hermanos de ~w es/son: ~w.', [X, HermanosStr]).


%Star rail base conocimiento
% Definiciones de personajes
via(acheron, nihilidad).
via(argenti, erudicion).
via(arlan, destruccion).
via(asta, armonia).
via(aventurino, conservacion).
via(bailu, abundancia).
via(blade, destruccion).
via(boothill, caceria).
via(bronya, armonia).
via(cisne_negro, nihilidad).
via(clara, destruccion).
via(dan_heng, caceria).
via(dan_heng_imbibitor_lunae, destruccion).
via(dr_ratio, caceria).
via(fu_xuan, conservacion).
via(gallagher, abundancia).
via(gepard, conservacion).
via(guinaifen, nihilidad).
via(hanya, armonia).
via(herta, erudicion).
via(himeko, erudicion).
via(huohuo, abundancia).
via(jing_yuan, erudicion).
via(jingliu, destruccion).
via(kafka, nihilidad).
via(luka, nihilidad).
via(luocha, abundancia).
via(lynx, abundancia).
via(misha, destruccion).
via(natasha, abundancia).
via(pela, nihilidad).
via(qingque, erudicion).
via(robin, armonia).
via(ruan_mei, armonia).
via(sampo, nihilidad).
via(seele, caceria).
via(serval, erudicion).
via(siete_de_marzo, conservacion).
via(silver_wolf, nihilidad).
via(sparkle, armonia).
via(sushang, caceria).
via(tingyun, armonia).
via(topaz_y_conti, caceria).
via(trazacaminos, destruccion).
via(trazacaminos, conservacion).
via(welt, nihilidad).
via(xueyi, destruccion).
via(yanqing, caceria).
via(yukong, armonia).

elemento(acheron, rayo).
elemento(argenti, fisico).
elemento(arlan, rayo).
elemento(asta, fuego).
elemento(aventurino, imaginario).
elemento(bailu, rayo).
elemento(blade, viento).
elemento(boothill, fisico).
elemento(bronya, viento).
elemento(cisne_negro, viento).
elemento(clara, fisico).
elemento(dan_heng, viento).
elemento(dan_heng_imbibitor_lunae, imaginario).
elemento(dr_ratio, imaginario).
elemento(fu_xuan, cuantico).
elemento(gallagher, fuego).
elemento(gepard, hielo).
elemento(guinaifen, fuego).
elemento(hanya, fisico).
elemento(herta, hielo).
elemento(himeko, fuego).
elemento(huohuo, viento).
elemento(jing_yuan, rayo).
elemento(jingliu, hielo).
elemento(kafka, rayo).
elemento(luka, fisico).
elemento(luocha, imaginario).
elemento(lynx, cuantico).
elemento(misha, hielo).
elemento(natasha, fisico).
elemento(pela, hielo).
elemento(qingque, cuantico).
elemento(robin, fisico).
elemento(ruan_mei, hielo).
elemento(sampo, viento).
elemento(seele, cuantico).
elemento(serval, rayo).
elemento(siete_de_marzo, hielo).
elemento(silver_wolf, cuantico).
elemento(sparkle, cuantico).
elemento(sushang, fisico).
elemento(tingyun, rayo).
elemento(topaz_y_conti, fuego).
elemento(trazacaminos, fisico).
elemento(trazacaminos, fuego).
elemento(welt, imaginario).
elemento(xueyi, cuantico).
elemento(yanqing, hielo).
elemento(yukong, imaginario).

rareza(acheron, 5).
rareza(argenti, 5).
rareza(arlan, 4).
rareza(asta, 4).
rareza(aventurino, 5).
rareza(bailu, 5).
rareza(blade, 5).
rareza(boothill, 5).
rareza(bronya, 5).
rareza(cisne_negro, 5).
rareza(clara, 5).
rareza(dan_heng, 4).
rareza(dan_heng_imbibitor_lunae, 5).
rareza(dr_ratio, 5).
rareza(fu_xuan, 5).
rareza(gallagher, 4).
rareza(gepard, 5).
rareza(guinaifen, 4).
rareza(hanya, 4).
rareza(herta, 4).
rareza(himeko, 5).
rareza(huohuo, 5).
rareza(jing_yuan, 5).
rareza(jingliu, 5).
rareza(kafka, 5).
rareza(luka, 4).
rareza(luocha, 5).
rareza(lynx, 4).
rareza(misha, 4).
rareza(natasha, 4).
rareza(pela, 4).
rareza(qingque, 4).
rareza(robin, 5).
rareza(ruan_mei, 5).
rareza(sampo, 4).
rareza(seele, 5).
rareza(serval, 4).
rareza(siete_de_marzo, 4).
rareza(silver_wolf, 5).
rareza(sparkle, 5).
rareza(sushang, 4).
rareza(tingyun, 4).
rareza(topaz_y_conti, 5).
rareza(trazacaminos, 5).
rareza(welt, 5).
rareza(xueyi, 4).
rareza(yanqing, 5).
rareza(yukong, 4).

planeta(acheron, izumo).
planeta(argenti, desconocido).
planeta(arlan, estacion_espacial_herta).
planeta(asta, estacion_espacial_herta).
planeta(aventurino, sigonia_iv).
planeta(bailu, xianzhou_luofu).
planeta(blade, xianzhou_luofu).
planeta(boothill, aeragan_epharshel).
planeta(bronya, jarilo_vi).
planeta(cisne_negro, penacony).
planeta(clara, jarilo_vi).
planeta(dan_heng, xianzhou_luofu).
planeta(dan_heng_imbibitor_lunae, xianzhou_luofu).
planeta(dr_ratio, desconocido).
planeta(fu_xuan, xianzhou_luofu).
planeta(gallagher, penacony).
planeta(gepard, jarilo_vi).
planeta(guinaifen, xianzhou_luofu).
planeta(hanya, xianzhou_luofu).
planeta(herta, estacion_espacial_herta).
planeta(himeko, expreso_astral).
planeta(huohuo, xianzhou_luofu).
planeta(jing_yuan, xianzhou_luofu).
planeta(jingliu, xianzhou_luofu).
planeta(kafka, pteruges_v).
planeta(luka, jarilo_vi).
planeta(luocha, xianzhou_luofu).
planeta(lynx, jarilo_vi).
planeta(misha, penacony).
planeta(natasha, jarilo_vi).
planeta(pela, jarilo_vi).
planeta(qingque, xianzhou_luofu).
planeta(robin, penacony).
planeta(ruan_mei, estacion_espacial_herta).
planeta(sampo, jarilo_vi).
planeta(seele, jarilo_vi).
planeta(serval, jarilo_vi).
planeta(siete_de_marzo, expreso_astral).
planeta(silver_wolf, punklorde).
planeta(sparkle, penacony).
planeta(sushang, xianzhou_luofu).
planeta(tingyun, xianzhou_luofu).
planeta(topaz_y_conti, desconocido).
planeta(trazacaminos, expreso_astral).
planeta(welt, expreso_astral).
planeta(xueyi, xianzhou_luofu).
planeta(yanqing, xianzhou_luofu).
planeta(yukong, xianzhou_luofu).



%Reglas Star Rail
son_de_rareza(X, R) :- 
    findall(Y, rareza(Y, X), Lista),
    atomic_list_concat(Lista, ', ', ListaStr),
    format(atom(R), 'Los personajes de rareza ~w estrellas son: ~w.', [X, ListaStr]).

son_de_planeta(X, R) :- 
    findall(Y, planeta(Y, X), Lista),
    atomic_list_concat(Lista, ', ', ListaStr),
    format(atom(R), 'Los personajes que pertenecen al planeta ~w son: ~w.', [X, ListaStr]).

son_de_via(X, R) :- 
    findall(Y, via(Y, X), Lista),
    atomic_list_concat(Lista, ', ', ListaStr),
    format(atom(R), 'Los personajes que siguen la via de ~w son: ~w.', [X, ListaStr]).

son_de_elemento(X, R) :- 
    findall(Y, elemento(Y, X), Lista),
    atomic_list_concat(Lista, ', ', ListaStr),
    format(atom(R), 'Los personajes que son de elemento ~w son: ~w.', [X, ListaStr]).


es_de_rareza(X, Y, R):- rareza(X, Y), R = ['Si', X, es, de, rareza, Y].
es_de_rareza(X, Y, R):- \+rareza(X, Y), R = ['No', X, no, es, de, rareza, Y].

es_de_planeta(X, Y, R):- planeta(X, Y), R = ['Si', X, es, del, planeta, Y].
es_de_planeta(X, Y, R):- \+planeta(X, Y), R = ['No', X, no, es, de, planeta, Y].

es_de_via(X, Y, R):- via(X, Y), R = ['Si', X, es, de, la, via, Y].
es_de_via(X, Y, R):- \+via(X, Y), R = ['No', X, no, es, de, la, via, Y].

es_de_elemento(X, Y, R):- elemento(X, Y), R = ['Si', X, es, de, elemento, Y].
es_de_elemento(X, Y, R):- \+elemento(X, Y), R = ['No', X, no, es, de, elemento, Y].


buscar_elemento(X, R) :- 
    findall(Y, elemento(X, Y), Lista),
    atomic_list_concat(Lista, ', ', ListaStr),
    format(atom(R), 'El personaje ~w es de elemento ~w.', [X, ListaStr]).

buscar_via(X, R) :- 
    findall(Y, via(X, Y), Lista),
    atomic_list_concat(Lista, ', ', ListaStr),
    format(atom(R), 'El personaje ~w es de la via ~w.', [X, ListaStr]).

buscar_rareza(X, R):- rareza(X, Y), R = [ X, es, de, rareza, Y].
buscar_rareza(X, R):- \+rareza(X, _), R = [ no, existe, personaje, X].

buscar_planeta(X, R):- planeta(X, Y), R = [ X, es, del, planeta, Y].
buscar_planeta(X, R):- \+planeta(X, _), R = [ no, existe, personaje, X].




%Base conocimiento enfermedades
% Base de conocimiento sobre enfermedades

% Causas de enfermedades
causa(candidiasis, uso_de_antibioticos).
causa(candidiasis, sistema_inmunitario_debilitado).
causa(candidiasis, diabetes).
causa(candidiasis, embarazo).
causa(candidiasis, uso_de_anticonceptivos_orales).
causa(candidiasis, higiene_inadecuada_o_excesiva).

causa(escoliosis, idiopatica).
causa(escoliosis, congenita).
causa(escoliosis, neuromuscular).
causa(escoliosis, degenerativa).

causa(hipertension_arterial, genetica).
causa(hipertension_arterial, dieta_alta_en_sodio).
causa(hipertension_arterial, sedentarismo).
causa(hipertension_arterial, sobrepeso_y_obesidad).
causa(hipertension_arterial, consumo_de_alcohol).
causa(hipertension_arterial, estres).
causa(hipertension_arterial, envejecimiento).

% Médicos especializados en enfermedades
medico(candidiasis, otorrinolaringologo).
medico(candidiasis, dermatologo).
medico(candidiasis, ginecologo).

medico(escoliosis, ortopedista).
medico(escoliosis, fisioterapeuta).

medico(hipertension_arterial, cardiologo).
medico(hipertension_arterial, medico_general).
medico(hipertension_arterial, nefrologo).

% Medicamentos para enfermedades
medicamento(candidiasis, fluconazol).
medicamento(candidiasis, clotrimazol).
medicamento(candidiasis, nistatina).

medicamento(escoliosis, analgesicos).

medicamento(hipertension_arterial, diureticos).
medicamento(hipertension_arterial, beta_bloqueadores).
medicamento(hipertension_arterial, inhibidores_de_la_enzima_convertidora_de_angiotensina).

% Tratamientos para enfermedades
tratamiento(candidiasis, antifungicos_orales).
tratamiento(candidiasis, antifungicos_topicos).
tratamiento(candidiasis, higiene_personal).

tratamiento(escoliosis, fisioterapia).
tratamiento(escoliosis, corset).
tratamiento(escoliosis, cirugia).

tratamiento(hipertension_arterial, dieta_baja_en_sal).
tratamiento(hipertension_arterial, ejercicio_regular).
tratamiento(hipertension_arterial, manejo_del_estres).

% Síntomas de enfermedades
sintoma(candidiasis, picazon).
sintoma(candidiasis, enrojecimiento).
sintoma(candidiasis, secrecion_blanca).
sintoma(candidiasis, dolor_al_orinar).
sintoma(candidiasis, ardor).
sintoma(candidiasis, inflamacion).

sintoma(escoliosis, curvatura_anormal_de_la_columna).
sintoma(escoliosis, dolor_de_espalda).
sintoma(escoliosis, asimetria_en_hombros_y_caderas).
sintoma(escoliosis, dificultad_para_respirar).
sintoma(escoliosis, fatiga_muscular).
sintoma(escoliosis, dolor_de_cuello).

sintoma(hipertension_arterial, dolor_de_cabeza).
sintoma(hipertension_arterial, mareos).
sintoma(hipertension_arterial, vision_borrosa).
sintoma(hipertension_arterial, falta_de_aliento).
sintoma(hipertension_arterial, palpitaciones).
sintoma(hipertension_arterial, sangrado_nasal).

% Lo que eliza sabe
elizaKnows(X, R):- knows(X),  R = ['Si', conozco, sobre, X].
elizaKnows(X, R):- \+knows(X),  R = ['No', desconozco, sobre, X].
knows(matematicas).
knows(biologia).
knows(programacion).
knows(espanol).
knows(ingles).
knows(quimica).


% Lo que le gusta a eliza : flagLike
elizaLikes(X, R):- likes(X), R = ['Yeah', i, like, X].
elizaLikes(X, R):- \+likes(X), R = ['Nope', i, do, not, like, X].
likes(apples).
likes(ponies).
likes(zombies).
likes(manzanas).
likes(computadoras).
like(carros).



% lo que hace eliza: flagDo
elizaDoes(X, R):- does(X), R = ['Yes', i, X, and, i, love, it].
elizaDoes(X, R):- \+does(X), R = ['No', i, do, not, X ,'.', it, is, too, hard, for, me].
does(study).
does(cook).
does(work).

% lo que es eliza: flagIs
elizaIs(X, R):- is0(X), R = ['Yes', yo, soy, X].
elizaIs(X, R):- \+is0(X), R = ['No', i, am, not, X].
is0(dumb).
is0(weird).
is0(nice).
is0(fine).
is0(happy).
is0(redundant).

match([],[]).
match([], _):- true.

match([S|Stim],[I|Input]) :-
	atom(S), % si I es un s(X) devuelve falso
	S == I,
	match(Stim, Input),!.

match([S|Stim],[_|Input]) :-
% I es un s(X), lo ignoro y continúo con el resto de la lista
	\+atom(S),
	match(Stim, Input),!.

replace0([], _, _, Resp, R):- append(Resp, [], R),!.


%%%%%%%%%%%%%%%%% Flags genealogico


%familia
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



%%%%%%%%%%%%%%%%% Flags Star Rail
%quienes son de rareza X
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagRareza,
    son_de_rareza(Atom, R).

%quienes son de planeta X
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagPlaneta,
    son_de_planeta(Atom, R).    


%quienes son de via X
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagVia,
    son_de_via(Atom, R). 

%quienes son de elemento X
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagElemento,
    son_de_elemento(Atom, R). 


%si personaje es de rareza X
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
	nth0(J, Input, Atom1),
	nth0(0, Resp, X),
    X == flagEsRareza,
    es_de_rareza(Atom, Atom1, R).

%si personaje es de planeta X
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
	nth0(J, Input, Atom1),
	nth0(0, Resp, X),
    X == flagEsDePlaneta,
    es_de_planeta(Atom, Atom1, R).

%si personaje es de via X
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
	nth0(J, Input, Atom1),
	nth0(0, Resp, X),
    X == flagEsDeVia,
    es_de_via(Atom, Atom1, R).

%si personaje es de elemento X
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
	nth0(J, Input, Atom1),
	nth0(0, Resp, X),
    X == flagEsDeElemento,
    es_de_elemento(Atom, Atom1, R).

%buscar rareza de X personaje
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagBuscarRareza,
    buscar_rareza(Atom, R). 

%buscar elemento de personaje X
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagBuscarElemento,
    buscar_elemento(Atom, R). 

%buscar planeta de X personaje
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagBuscarPlaneta,
    buscar_planeta(Atom, R). 

%buscar via de personaje X
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagBuscarVia,
    buscar_via(Atom, R). 


% Eliza knows:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagKnow,
	elizaKnows(Atom, R).


% Eliza likes:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagLike,
	elizaLikes(Atom, R).

% Eliza does:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagDo,
	elizaDoes(Atom, R).

% Eliza is:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagIs,
	elizaIs(Atom, R).

replace0([I|Index], Input, N, Resp, R):-
	length(Index, M), M =:= 0,
	nth0(I, Input, Atom),
	select(N, Resp, Atom, R1), append(R1, [], R),!.

replace0([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	length(Index, M), M > 0,
	select(N, Resp, Atom, R1),
	N1 is N + 1,
	replace0(Index, Input, N1, R1, R),!.