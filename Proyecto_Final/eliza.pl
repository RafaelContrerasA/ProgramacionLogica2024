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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Templetes genealogico %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%preguntar hijos
template([eliza,  s(_), tiene, hijos, _], [flagHijos], [1]).
template([quienes, son, hijos, de,  s(_), _], [flagHijos], [4]).

%preguntar hermanos
template([eliza,  s(_), tiene, hermanos, .], [flagHermanos], [1]).
template([quienes, son, hermanos, de,  s(_), _], [flagHermanos], [4]).

%preguntar tios
template([eliza,  s(_), tiene, tios, .], [flagTios], [1]).
template([quienes, son, tios, de,  s(_), _], [flagTios], [4]).

%preguntar abuelos
template([eliza,  s(_), tiene, abuelos, .], [flagAbuelos], [1]).
template([quienes, son, abuelos, de,  s(_), _], [flagAbuelos], [4]).

%preguntar primos
template([eliza,  s(_), tiene, primos, .], [flagPrimos], [1]).
template([quienes, son, primos, de,  s(_), _], [flagPrimos], [4]).

%preguntar sobrinos
template([eliza,  s(_), tiene, sobrinos, .], [flagSobrinos], [1]).
template([quienes, son, sobrinos, de,  s(_), _], [flagSobrinos], [4]).

%preguntar nietos
template([eliza,  s(_), tiene, nietos, .], [flagNietos], [1]).
template([quienes, son, nietos, de,  s(_), _], [flagNietos], [4]).

%preguntar padres
template([eliza,  s(_), tiene, padres, .], [flagPadres], [1]).
template([quienes, son, padres, de,  s(_), _], [flagPadres], [4]).

%preguntar si X es hijo de Y
template([eliza, es, s(_), hijo, de, s(_), _], [flagEsHijoDe], [2,5]).
template([es, s(_), hijo, de, s(_), _], [flagEsHijoDe], [1,4]).

% preguntar si X es hermano de Y
template([eliza, es, s(_), hermano, de, s(_), _], [flagEsHermanoDe], [2,5]).
template([es, s(_), hermano, de, s(_), _], [flagEsHermanoDe], [1,4]).

% preguntar si X es tío de Y
template([eliza, es, s(_), tio, de, s(_), _], [flagEsTioDe], [2,5]).
template([es, s(_), tio, de, s(_), _], [flagEsTioDe], [1,4]).

%preguntar si X es abuelo de Y
template([eliza, es, s(_), abuelo, de, s(_), _], [flagEsAbueloDe], [2,5]).
template([es, s(_), abuelo, de, s(_), _], [flagEsAbueloDe], [1,4]).

%preguntar si X es primo de Y
template([eliza, es, s(_), primo, de, s(_), _], [flagEsPrimoDe], [2,5]).
template([es, s(_), primo, de, s(_), _], [flagEsPrimoDe], [1,4]).

% preguntar si X es sobrino de Y
template([eliza, es, s(_), sobrino, de, s(_), _], [flagEsSobrinoDe], [2,5]).
template([es, s(_), sobrino, de, s(_), _], [flagEsSobrinoDe], [1,4]).

%preguntar si X es nieto de Y
template([eliza, es, s(_), nieto, de, s(_), _], [flagEsNietoDe], [2,5]).
template([es, s(_), nieto, de, s(_), _], [flagEsNietoDe], [1,4]).

%preguntar si X es padre de Y
template([eliza, es, s(_), padre, de, s(_), _], [flagEsPadreDe], [2,5]).
template([es, s(_), padre, de, s(_), _], [flagEsPadreDe], [1,4]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Templetes Star Rail %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%preguntar que personajes conoces
template([cuales, son, los,personajes, de, star, rail, _], [flagPersonajes], [0]).
template([cuales, son, los,personajes, del, star, rail, _], [flagPersonajes], [0]).
template([eliza, que, personajes, conoces, _], [flagPersonajes], [0]).
template([que, personajes, conoces, _], [flagPersonajes], [0]).


%preguntar que elementos conoces
template([cuales, son, los, elementos, de, star, rail, _], [flagElementos], [0]).
template([cuales, son, los, elementos, del, star, rail, _], [flagElementos], [0]).
template([eliza, que, elementos, conoces, _], [flagElementos], [0]).
template([que, elementos, conoces, _], [flagElementos], [0]).

%preguntar que vias conoces
template([cuales, son, las, vias, de, star, rail, _], [flagVias], [0]).
template([cuales, son, las, vias, del, star, rail, _], [flagVias], [0]).
template([eliza, que, vias, conoces, _], [flagVias], [0]).
template([que, vias, conoces, _], [flagVias], [0]).

%preguntar que planetas conoces
template([cuales, son, los,planetas, de, star, rail, _], [flagPlanetas], [0]).
template([cuales, son, los,planetas, del, star, rail, _], [flagPlanetas], [0]).
template([eliza, que, planetas, conoces, _], [flagPlanetas], [0]).
template([que, planetas, conoces, _], [flagPlanetas], [0]).

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



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Templetes enfermedades %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

%Preguntar enfermedad
template([que, es, la, s(_), _], [flagSDescripcion], [3]).
template([que, es, s(_), _], [flagSDescripcion], [2]).
template([describe, la, s(_), _], [flagSDescripcion], [2]).


%Preguntar enfermedades
template([eliza, que, enfermedades, conoces, _], [flagEnfermedades], [0]).
template([que, enfermedades, conoces, _], [flagEnfermedades], [0]).
template([que, enfermedades, sabes, _], [flagEnfermedades], [0]).


%preguntar causas
template([cuales, son, las, causas, de, la,  s(_), _], [flagCausas], [6]).
template([cuales, son, las, causas, de, s(_), _], [flagCausas], [5]).
template([causas, de, la, s(_), _], [flagCausas], [3]).
template([causas, de, s(_), _], [flagCausas], [2]).


%preguntar medicamentos
template([cuales, son, los, medicamentos, para, la,  s(_), _], [flagMedicamentos], [6]).
template([que, medicamentos, ayudan, con, la,  s(_), _], [flagMedicamentos], [5]).
template([medicamentos, para, la,  s(_), _], [flagMedicamentos], [3]).


%preguntar medicos
template([cuales, especialistas, pueden, atender, la,  s(_), _], [flagMedicos], [5]).
template([quienes, pueden, atender, la,  s(_), _], [flagMedicos], [4]).
template([que, medicos, atienden, la,  s(_), _], [flagMedicos], [4]).

%preguntar tratamientos
template([que, tratamientos, ayudan, con, la,  s(_), _], [flagTratamientos], [5]).
template([como, puedo, tratar, la,  s(_), _], [flagTratamientos], [4]).
template([tratamiento, para, la,  s(_), _], [flagTratamientos], [3]).
template([tratamiento, de, la,  s(_), _], [flagTratamientos], [3]).



%preguntar sintomas
template([cuales,son, los, sintomas, de, la,  s(_), _], [flagSintomas], [6]).
template([que, sintomas, tiene, la,  s(_), _], [flagSintomas], [4]).
template([sintomas, de, la,  s(_), _], [flagSintomas], [3]).


%preguntar si X es causa de Y
template([es, s(_), causa, de, la, s(_), _], [flagEsCausa], [1,5]).
template([es, s(_), causa, de, s(_), _], [flagEsCausa], [1,4]).


%preguntar si X es sintoma de Y
template([es, la, s(_), sintoma, de, la, s(_), _], [flagEsSintoma], [2,6]).
template([es, s(_), sintoma, de, la, s(_), _], [flagEsSintoma], [1,5]).
template([es, s(_), sintoma, de, s(_), _], [flagEsSintoma], [1,4]).

%preguntar si X es tratamiento de Y
template([es, s(_), tratamiento, de, la, s(_), _], [flagEsTratamiento], [1,5]).
template([es, s(_), tratamiento, de, s(_), _], [flagEsTratamiento], [1,4]).

%preguntar si X es medicamento de Y
template([sirve, el, s(_), para, tratar, la, s(_), _], [flagEsMedicamento], [2,6]).
template([sirve, s(_), para, tratar, la, s(_), _], [flagEsMedicamento], [1,5]).
template([sirve, s(_), para, tratar, s(_), _], [flagEsMedicamento], [1,4]).


%preguntar si X es medico de Y
template([es, un, s(_), encargado, de, tratar, la, s(_), _], [flagEsMedico], [2,7]).
template([es, un, s(_), capaz, de, tratar, la, s(_), _], [flagEsMedico], [2,7]).
template([es, s(_), encargado, de, tratar, la, s(_), _], [flagEsMedico], [1,6]).
template([es, s(_), capaz, de, tratar, la, s(_), _], [flagEsMedico], [1,6]).
template([es, s(_), encargado, de, tratar, s(_), _], [flagEsMedico], [1,5]).
template([es, s(_), capaz, de, tratar, s(_), _], [flagEsMedico], [1,5]).


%preguntar probabilidad de enfermedad
template([podria, tener, s(_), '?', mis, sintomas, son, s(_)], [flagProbabilidad], [2,7]).
template([puedo, tener, s(_), '?', mis, sintomas, son, s(_)], [flagProbabilidad], [2,7]).
template([tengo, s(_), '?', mis, sintomas, son, s(_)], [flagProbabilidad], [1,6]).

%Receta (regla del documento)
template([dame, receta, para, la,  s(_)], [flagReceta], [4]).
template([receta, para, la,  s(_)], [flagReceta], [3]).
template([receta, de,  s(_)], [flagReceta], [2]).

%%%%%%%%%%%%%%Otros

template([como, estas, tu, '?'], [yo, estoy, bien, ',', gracias, por, preguntar, '.'], []).

template([yo, pienso, que, _], [bueno, esa, es, tu, opinion], []).
template([porque, _], [esa, no, es, una, buena, razon, '.'], []).
template([i, have, s(_), with, s(_), '.'], ['You', have, to, deal, with, your, 0, and, your, 1, in, a, mature, way, '.'], [2, 4]).
template([i, s(_),  _], [i, can, recommend, you, a, book, about, that, issue], []).
template([please, s(_), _], ['No', i, can, not, help, ',', i, am, just, a, machine], []). 
		 template([tell, me, a, s(_), _], ['No', i, can, not, ',', i, am, bad, at, that], []).


template(_, ['Please', explain, a, little, more, '.'], []). 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Base de conocimiento genealogico %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

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
padrede(anonim, marta). 
padrede(elvira, luz).
padrede(elvira, min).
padrede(elvira, irma).
padrede(elvira, esperanza).
padrede(ana, rafaelc).
padrede(ana, marta).
padrede(luz, rafael).
padrede(luz, sean).
padrede(luz, io).
padrede(irma, miguel).
padrede(irma, sugey).
padrede(heidi, angel).
padrede(heidi, ayme).
padrede(esperanza, ivan).
padrede(esperanza, hans).
padrede(esperanza, rubi).
padrede(esperanza, patricia).
padrede(marta, alvaro).

% Hijo: Y es hijo de X si X es padre de Y
hijode(Y, X) :- padrede(X, Y).

% Hermano: X es hermano de Y si comparten el mismo padre
hermanode(X, Y) :- padrede(Z, X), padrede(Z, Y), X \= Y.

% Tío: X es tío de Y si el padre de Y tiene un hermano que es X
tiode(X, Y) :- padrede(Z, Y), hermanode(X, Z).

% Abuelo: X es abuelo de Y si X es padre de Z y Z es padre de Y
abuelode(X, Y) :- padrede(X, Z), padrede(Z, Y).

% Sobrino: Y es sobrino de X si X es hermano del padre de Y
sobrinode(Y, X) :- padrede(Z, Y), hermanode(X, Z).

% Primos: X y Y son primos si los padres de X y Y son hermanos entre sí
primode(X, Y) :- padrede(A, X), padrede(B, Y), hermanode(A, B).

% Nieto: Si Y es abuelo de X
nietode(X , Y) :- abuelode(Y, X).

%reglas

hijos_de(X, R) :- 
    setof(Y, padrede(X, Y), Hijos),
    atomic_list_concat(Hijos, ', ', HijosStr),
    format(atom(R), 'Los  hijos de ~w es/son: ~w.', [X, HijosStr]).
hijos_de(X, R) :- 
    \+padrede(X, _),
   R=['Ninguno cumple con la propiedad'].


hermanos_de(X, R) :- 
    setof(Y, hermanode(X, Y), Hermanos),
    atomic_list_concat(Hermanos, ', ', HermanosStr),
    format(atom(R), 'Los hermanos de ~w son: ~w.', [X, HermanosStr]).
hermanos_de(X, R) :- 
    \+hermanode(X, _),
   R=['Ninguno cumple con la propiedad'].

tios_de(X, R) :- 
    setof(Y, tiode(Y, X), Tios),
    atomic_list_concat(Tios, ', ', TiosStr),
    format(atom(R), 'Los tios de ~w son: ~w.', [X, TiosStr]).
tios_de(X, R) :- 
    \+tiode(_, X),
   R=['Ninguno cumple con la propiedad'].

abuelos_de(X, R) :- 
    setof(Y, abuelode(Y, X), Abuelos),
    atomic_list_concat(Abuelos, ', ', AbuelosStr),
    format(atom(R), 'Los abuelos de ~w son: ~w.', [X, AbuelosStr]).
abuelos_de(X, R) :- 
    \+abuelode(_, X),
   R=['Ninguno cumple con la propiedad'].

sobrinos_de(X, R) :- 
    setof(Y, sobrinode(Y, X), Sobrinos),
    atomic_list_concat(Sobrinos, ', ', SobrinosStr),
    format(atom(R), 'Los sobrinos de ~w son: ~w.', [X, SobrinosStr]).
sobrinos_de(X, R) :- 
    \+sobrinode(_, X),
   R=['Ninguno cumple con la propiedad'].

primos_de(X, R) :- 
    setof(Y, primode(Y, X), Primos),
    atomic_list_concat(Primos, ', ', PrimosStr),
    format(atom(R), 'Los primos de ~w son: ~w.', [X, PrimosStr]).
primos_de(X, R) :- 
    \+primode(_, X),
   R=['Ninguno cumple con la propiedad'].

nietos_de(X, R) :- 
    setof(Y, nietode(Y, X), Nietos),
    atomic_list_concat(Nietos, ', ', NietosStr),
    format(atom(R), 'Los nietos de ~w son: ~w.', [X, NietosStr]).
nietos_de(X, R) :- 
    \+nietode(_, X),
   R=['Ninguno cumple con la propiedad'].

padres_de(X, R) :- 
    setof(Y, padrede(Y, X), Nietos),
    atomic_list_concat(Nietos, ', ', PadresStr),
    format(atom(R), 'Los padres de ~w son: ~w.', [X, PadresStr]).
padres_de(X, R) :- 
    \+nietode(_, X),
   R=['Ninguno cumple con la propiedad'].

% validar si X es hijo de Y
es_hijo_de(X, Y, R):- hijode(X, Y), R = ['Si', X, es, hijo, de, Y].
es_hijo_de(X, Y, R):- \+hijode(X, Y), R = ['No', X, no, es, hijo, de, Y].

% validar si X es hermano de Y
es_hermano_de(X, Y, R):- hermanode(X, Y), R = ['Si', X, es, hermano, de, Y].
es_hermano_de(X, Y, R):- \+hermanode(X, Y), R = ['No', X, no, es, hermano, de, Y].

% validar si X es tío de Y
es_tio_de(X, Y, R):- tiode(X, Y), R = ['Si', X, es, tio, de, Y].
es_tio_de(X, Y, R):- \+tiode(X, Y), R = ['No', X, no, es, tio, de, Y].

% validar si X es abuelo de Y
es_abuelo_de(X, Y, R):- abuelode(X, Y), R = ['Si', X, es, abuelo, de, Y].
es_abuelo_de(X, Y, R):- \+abuelode(X, Y), R = ['No', X, no, es, abuelo, de, Y].

% validar si X es primo de Y
es_primo_de(X, Y, R):- primode(X, Y), R = ['Si', X, es, primo, de, Y].
es_primo_de(X, Y, R):- \+primode(X, Y), R = ['No', X, no, es, primo, de, Y].

% validar si X es sobrino de Y
es_sobrino_de(X, Y, R):- sobrinode(X, Y), R = ['Si', X, es, sobrino, de, Y].
es_sobrino_de(X, Y, R):- \+sobrinode(X, Y), R = ['No', X, no, es, sobrino, de, Y].

% validar si X es nieto de Y
es_nieto_de(X, Y, R):- nietode(X, Y), R = ['Si', X, es, nieto, de, Y].
es_nieto_de(X, Y, R):- \+nietode(X, Y), R = ['No', X, no, es, nieto, de, Y].

% validar si X es padre de Y
es_padre_de(X, Y, R):- padrede(X, Y), R = ['Si', X, es, padre, de, Y].
es_padre_de(X, Y, R):- \+padrede(X, Y), R = ['No', X, no, es, padre, de, Y].    

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Star rail base conocimiento %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
personaje(acheron).
personaje(argenti).
personaje(arlan).
personaje(asta).
personaje(aventurino).
personaje(bailu).
personaje(blade).
personaje(boothill).
personaje(bronya).
personaje(cisne_negro).
personaje(clara).
personaje(dan_heng).
personaje(dan_heng_imbibitor_lunae).
personaje(dr_ratio).
personaje(fu_xuan).
personaje(gallagher).
personaje(gepard).
personaje(guinaifen).
personaje(hanya).
personaje(herta).
personaje(himeko).
personaje(huohuo).
personaje(jing_yuan).
personaje(jingliu).
personaje(kafka).
personaje(luka).
personaje(luocha).
personaje(lynx).
personaje(misha).
personaje(natasha).
personaje(pela).
personaje(qingque).
personaje(robin).
personaje(ruan_mei).
personaje(sampo).
personaje(seele).
personaje(serval).
personaje(siete_de_marzo).
personaje(silver_wolf).
personaje(sparkle).
personaje(sushang).
personaje(tingyun).
personaje(topaz_y_conti).
personaje(trazacaminos).
personaje(welt).
personaje(xueyi).
personaje(yanqing).
personaje(yukong).


% Definición de vías
via(nihilidad).
via(erudicion).
via(destruccion).
via(armonia).
via(conservacion).
via(abundancia).
via(caceria).

% Definición de elementos
elemento(rayo).
elemento(fisico).
elemento(fuego).
elemento(imaginario).
elemento(viento).
elemento(cuantico).
elemento(hielo).

% Definición de planetas
planeta(izumo).
planeta(estacion_espacial_herta).
planeta(sigonia_iv).
planeta(xianzhou_luofu).
planeta(desconocido).
planeta(aeragan_epharshel).
planeta(jarilo_vi).
planeta(penacony).
planeta(pteruges_v).
planeta(expreso_astral).
planeta(punklorde).

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




%reglas
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

personajes_conocidos(R) :- 
    findall(Y, personaje(Y), Lista),
    atomic_list_concat(Lista, ', ', ListaStr),
    format(atom(R), 'Los personajes de Star Rail son: ~w.', [ListaStr]).

elementos_conocidos(R) :- 
    findall(Y, elemento(Y), Lista),
    atomic_list_concat(Lista, ', ', ListaStr),
    format(atom(R), 'Los elementos de Star Rail son: ~w.', [ListaStr]).

vias_conocidas(R) :- 
    findall(Y, via(Y), Lista),
    atomic_list_concat(Lista, ', ', ListaStr),
    format(atom(R), 'Las vias de Star Rail son: ~w.', [ListaStr]).

planetas_conocidos(R) :- 
    findall(Y, planeta(Y), Lista),
    atomic_list_concat(Lista, ', ', ListaStr),
    format(atom(R), 'Los planetas de Star Rail son: ~w.', [ListaStr]).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Base conocimiento enfermedades %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
enfermedad(candidiasis).
enfermedad(escoliosis).
enfermedad(hipertension_arterial).


% Descripcion
descripcion(candidiasis, 'una infección causada por especies del hongo Candida, principalmente Candida albicans. Se
manifiesta con lesiones mucocutáneas, fungemia y, en ocasiones, infecciones localizadas en múltiples sitios. Los
síntomas varían según la localización de la infección y pueden incluir desde irritación y picazón hasta síntomas
más graves como fiebre y shock en casos de candidiasis invasiva.
').

descripcion(escoliosis, 'una desviación lateral de la columna vertebral que se diagnostica comúnmente en adolescentes.
Puede presentarse en personas con condiciones como parálisis cerebral o distrofia muscular, pero la causa de la
mayoría de los casos en la infancia es desconocida. La escoliosis puede variar de leve a grave, y en casos severos,
puede ser incapacitante y reducir el espacio dentro del pecho, afectando la función pulmonar.').

descripcion(hipertension_arterial, 'una condición en la que la fuerza de
la sangre contra las paredes de las arterias es consistentemente demasiado alta. Esto puede causar problemas de
salud a largo plazo, como enfermedades cardíacas y accidentes cerebrovasculares. La presión arterial se mide en
milímetros de mercurio (mm Hg) y se considera alta cuando las lecturas son de 130/80 mm Hg o más.').




% Causas de enfermedades
causa(candidiasis, uso_de_antibioticos).
causa(candidiasis, sistema_inmunitario_debilitado).
causa(candidiasis, diabetes).
causa(candidiasis, cambios_hormonales).
causa(candidiasis, uso_de_anticonceptivos_orales).
causa(candidiasis, higiene_inadecuada_o_excesiva).

causa(escoliosis, factores_hereditarios).
causa(escoliosis, afecciones_neuromusculares).
causa(escoliosis, defectos_de_nacimiento).
causa(escoliosis, lesiones_en_columna).

causa(hipertension_arterial, genetica).
causa(hipertension_arterial, dieta_alta_en_sodio).
causa(hipertension_arterial, sedentarismo).
causa(hipertension_arterial, sobrepeso_y_obesidad).
causa(hipertension_arterial, consumo_de_alcohol).
causa(hipertension_arterial, estres).
causa(hipertension_arterial, envejecimiento).

% Médicos especializados en enfermedades
medico(candidiasis, infectologo).
medico(candidiasis, dermatologo).
medico(candidiasis, ginecologo).
medico(candidiasis, urologo).
medico(candidiasis, estamatologo).

medico(escoliosis, ortopedista).
medico(escoliosis, fisioterapeuta).
medico(escoliosis, pediatra).

medico(hipertension_arterial, cardiologo).
medico(hipertension_arterial, medico_general).
medico(hipertension_arterial, nefrologo).
medico(hipertension_arterial, endocrinologo).

% Medicamentos para enfermedades
medicamento(candidiasis, fluconazol).
medicamento(candidiasis, clotrimazol).
medicamento(candidiasis, miconazol).
medicamento(candidiasis, terconazol).
medicamento(candidiasis, nistatina).
medicamento(candidiasis, itraconazol).
medicamento(candidiasis, ketoconazol).

medicamento(escoliosis, ibuprofeno).
medicamento(escoliosis, naproxeno).
medicamento(escoliosis, analgesicos).

medicamento(hipertension_arterial, diureticos).
medicamento(hipertension_arterial, clortalidona).
medicamento(hipertension_arterial, clorotiazida).
medicamento(hipertension_arterial, hidroclorotiazida).
medicamento(hipertension_arterial, indapamida).
medicamento(hipertension_arterial, metolazona).
medicamento(hipertension_arterial, acebutolol).
medicamento(hipertension_arterial, atenolol).
medicamento(hipertension_arterial, betaxolol).
medicamento(hipertension_arterial, bisoprolol).
medicamento(hipertension_arterial, metoprolol).
medicamento(hipertension_arterial, nadolol).

% Tratamientos para enfermedades
tratamiento(candidiasis, terapia_antimicotica).
tratamiento(candidiasis, medicacion_oral).
tratamiento(candidiasis, acido_borico).

tratamiento(escoliosis, observacion_periodica).
tratamiento(escoliosis, corset_ortopedico).
tratamiento(escoliosis, fisioterapia).
tratamiento(escoliosis, cirugia).

tratamiento(hipertension_arterial, cambio_de_dieta).
tratamiento(hipertension_arterial, ejercicio_regular).
tratamiento(hipertension_arterial, reducir_sales).
tratamiento(hipertension_arterial, medicacion).



% Síntomas de enfermedades
sintoma(candidiasis, picazon).
sintoma(candidiasis, irritacion).
sintoma(candidiasis, fiebre).
sintoma(candidiasis, dolor).
sintoma(candidiasis, secreciones).
sintoma(candidiasis, ardor_al_orinar).

sintoma(escoliosis, hombros_desiguales).
sintoma(escoliosis, omoplato_prominente).
sintoma(escoliosis, cintura_desigual).
sintoma(escoliosis, caja_toracica_sobresaliente).
sintoma(escoliosis, dolor_de_espalda).
sintoma(escoliosis, asimetria_en_hombros_y_caderas).
sintoma(escoliosis, dificultad_para_respirar).
sintoma(escoliosis, fatiga_muscular).
sintoma(escoliosis, dolor_de_cuello).

sintoma(hipertension_arterial, dolores_de_cabeza).
sintoma(hipertension_arterial, falta_de_aire).
sintoma(hipertension_arterial, sangrados_nasales).
sintoma(hipertension_arterial, dolor_intenso_de_cabeza).
sintoma(hipertension_arterial, dolor_en_el_pecho).
sintoma(hipertension_arterial, mareos).
sintoma(hipertension_arterial, dificultad_para_respirar).
sintoma(hipertension_arterial, nauseas).
sintoma(hipertension_arterial, vomitos).
sintoma(hipertension_arterial, vision_borrosa).



%Cuales son los sintomas de X
enfermedades_conocidas(R) :- 
    findall(Y, enfermedad(Y), Lista),
    atomic_list_concat(Lista, ', ', ListaStr),
    format(atom(R), 'Los enfermedades que conozco son: ~w.', [ListaStr]).

descripcion_de(X, R) :- 
    findall(Y, descripcion(X, Y), Lista),
    atomic_list_concat(Lista, ', ', ListaStr),
    format(atom(R), 'La ~w es ~w.', [X, ListaStr]).

%Cuales son los sintomas de X
sintomas_de(X, R) :- 
    findall(Y, sintoma(X, Y), Lista),
    atomic_list_concat(Lista, ', ', ListaStr),
    format(atom(R), 'Los sintomas de ~w son: ~w.', [X, ListaStr]).

%Cuales son los sintomas de X
causas_de(X, R) :- 
    findall(Y, causa(X, Y), Lista),
    atomic_list_concat(Lista, ', ', ListaStr),
    format(atom(R), 'Las causas de ~w son: ~w.', [X, ListaStr]).

%Cuales son los sintomas de X
tratamientos_de(X, R) :- 
    findall(Y, tratamiento(X, Y), Lista),
    atomic_list_concat(Lista, ', ', ListaStr),
    format(atom(R), 'Los tratamientos de ~w son: ~w.', [X, ListaStr]).

%Cuales son los sintomas de X
medicamentos_de(X, R) :- 
    findall(Y, medicamento(X, Y), Lista),
    atomic_list_concat(Lista, ', ', ListaStr),
    format(atom(R), 'Los medicamentos que ayudan con la ~w son: ~w.', [X, ListaStr]).

%Cuales son los sintomas de X
medicos_de(X, R) :- 
    findall(Y, medico(X, Y), Lista),
    atomic_list_concat(Lista, ', ', ListaStr),
    format(atom(R), 'Los medicos que atienden la ~w son: ~w.', [X, ListaStr]).

%Si X es causa de Y
causa_de(Y, X, R):- causa(X, Y), R = ['Si', Y, 'es una posible causa de la', X].
causa_de(Y, X, R):- \+causa(X, Y), R = ['No', Y, 'no es una posible causa de la', X].

%Si X es sintoma de Y
sintoma_de(Y, X, R):- sintoma(X, Y), R = ['Si', Y, 'es un posible sintoma de la', X].
sintoma_de(Y, X, R):- \+sintoma(X, Y), R = ['No', Y, 'no es un posible sintoma de la', X].

%Si X es tratamiento de Y
tratamiento_de(Y, X, R):- tratamiento(X, Y), R = ['Si', Y, 'es una forma de tratar la', X].
tratamiento_de(Y, X, R):- \+tratamiento(X, Y), R = ['No', Y, 'no es una forma de tratar la', X].

%Si X es medicamento de Y
medicamento_de(Y, X, R):- medicamento(X, Y), R = ['Si', Y, 'es un medicamento adecuado para tratar la', X].
medicamento_de(Y, X, R):- \+medicamento(X, Y), R = ['No', Y, 'no es un medicamento adecuado para tratar la', X].

%Si X es medico de Y
medico_de(Y, X, R):- medico(X, Y), R = ['Si', Y, 'es capaz de dar tratamiento a la', X].
medico_de(Y, X, R):- \+medico(X, Y), R = ['No', Y, 'no es capaz de dar tratamiento a la', X].

%Regla para calcular probabilidad
buscar([], E, 0).
buscar(X, E, 1) :- sintoma(E, X).
buscar([X|Xs], E, P) :- enfermedad(E), buscar(X, E, S1), buscar(Xs, E, S2), P is S1 + S2.

cantSint(E, C) :- findall(X, sintoma(E, X), L), length(L, R), C is R.
diagnostico([X|Xs] , E , K, R) :- buscar([X|Xs] , E , P) , cantSint(E , T) , K is P * 100 / T, R = ['La probabilidad de tener ', E, ' es', K].
diagnostico([X|Xs] , E , K, R) :- \+buscar([X|Xs] , E , P) ,  R = ['Uno o mas sintomas no pertenecen a la enfermedad'].


%sacar lista de sintomas desde template
sublista_desde_n(Lista, N, Sublista) :-
    length(Prefijo, N),        % Creamos un prefijo de longitud N
    append(Prefijo, Sublista, Lista). % Concatenamos el prefijo con la sublista para obtener la lista completa



atiende_especialista(E, S) :- sintoma(Z, S), medico(Z, E).
mereceta(Es, M, E, R) :- medicamento(E, M), sintoma(E, S), atiende_especialista(Es, S), R = ['se recomienda tomar ', M, 'y acudir con el ', Es].
mereceta(Es, M, E, R) :- \+medicamento(E, M),  R = ['No se encontro la enfermedad especificada'].



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Base de conocimineto eliza og %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Flags genealogico %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

%hijo
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagHijos,
    hijos_de(Atom, R).

%hermanos
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagHermanos,
    hermanos_de(Atom, R).

%tios
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagTios,
    tios_de(Atom, R).

%abuelos
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagAbuelos,
    abuelos_de(Atom, R).

%primos
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagPrimos,
    primos_de(Atom, R).

%sobrinos
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagSobrinos,
    sobrinos_de(Atom, R).

%nietos
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagNietos,
    nietos_de(Atom, R).

%padres
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagPadres,
    padres_de(Atom, R).

% hijo de
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
	nth0(J, Input, Atom1),
	nth0(0, Resp, X),
    X == flagEsHijoDe,
    es_hijo_de(Atom, Atom1, R).

% hermano de
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
	nth0(J, Input, Atom1),
	nth0(0, Resp, X),
    X == flagEsHermanoDe,
    es_hermano_de(Atom, Atom1, R).

% tio de
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
	nth0(J, Input, Atom1),
	nth0(0, Resp, X),
    X == flagEsTioDe,
    es_tio_de(Atom, Atom1, R).

% abuelo de
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
	nth0(J, Input, Atom1),
	nth0(0, Resp, X),
    X == flagEsAbueloDe,
    es_abuelo_de(Atom, Atom1, R).

% primo de
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
	nth0(J, Input, Atom1),
	nth0(0, Resp, X),
    X == flagEsPrimoDe,
    es_primo_de(Atom, Atom1, R).

% sobrino de
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
	nth0(J, Input, Atom1),
	nth0(0, Resp, X),
    X == flagEsSobrinoDe,
    es_sobrino_de(Atom, Atom1, R).

% nieto de
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
	nth0(J, Input, Atom1),
	nth0(0, Resp, X),
    X == flagEsNietoDe,
    es_nieto_de(Atom, Atom1, R).

% padre de
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
	nth0(J, Input, Atom1),
	nth0(0, Resp, X),
    X == flagEsPadreDe,
    es_padre_de(Atom, Atom1, R).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Flags Enfermedades %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Enfermedades del sistema
replace0([_|_], _, _, Resp, R) :- 
    %nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagEnfermedades,
    enfermedades_conocidas(R).


%Que es X
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagSDescripcion,
    descripcion_de(Atom, R).

%cuales son los sintomas de X
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagSintomas,
    sintomas_de(Atom, R).

%cuales son las causas de X
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagCausas,
    causas_de(Atom, R).

%cuales son los tratamientos de X
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagTratamientos,
    tratamientos_de(Atom, R).

%cuales son los medicamentos de X
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagMedicamentos,
    medicamentos_de(Atom, R).

%cuales son los medicos que atienden de X
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagMedicos,
    medicos_de(Atom, R).

%si X es causa de Y
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
	nth0(J, Input, Atom1),
	nth0(0, Resp, X),
    X == flagEsCausa,
    causa_de(Atom, Atom1, R).

%si X es sintoma de Y
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
	nth0(J, Input, Atom1),
	nth0(0, Resp, X),
    X == flagEsSintoma,
    sintoma_de(Atom, Atom1, R).

%si X es tratamiento de Y
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
	nth0(J, Input, Atom1),
	nth0(0, Resp, X),
    X == flagEsTratamiento,
    tratamiento_de(Atom, Atom1, R).

%si X es medicamento de Y
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
	nth0(J, Input, Atom1),
	nth0(0, Resp, X),
    X == flagEsMedicamento,
    medicamento_de(Atom, Atom1, R).

%si X es medico de Y
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
	nth0(J, Input, Atom1),
	nth0(0, Resp, X),
    X == flagEsMedico,
    medico_de(Atom, Atom1, R).


%Probabilidad
replace0([I, J], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
	nth0(J, Input, Atom1),
	nth0(0, Resp, X),
    X == flagProbabilidad,
    sublista_desde_n(Input, J, Sublista),
    diagnostico(Sublista, Atom, Probabilidad, R).

%receta
replace0([I|_], Input, _, Resp, R) :- 
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagReceta,
    mereceta(E,M, Atom, R).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Flags Star Rail %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%todos los personajes
replace0([_|_], _, _, Resp, R) :- 
    %nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagPersonajes,
    personajes_conocidos(R).

%todos los elementos
replace0([_|_], _, _, Resp, R) :- 
    %nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagElementos,
    elementos_conocidos(R).

%todos las vias
replace0([_|_], _, _, Resp, R) :- 
    %nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagVias,
    vias_conocidas(R).

%todos los planetas
replace0([_|_], _, _, Resp, R) :- 
    %nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagPlanetas,
    planetas_conocidos(R).


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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Flags Eliza %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
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
