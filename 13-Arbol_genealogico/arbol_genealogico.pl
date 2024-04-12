abuelo(benjamin).
abuelo(anonim).
padre(rafaelc).
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

abuela(ana).
abuela(elvira).
madre(luz).
madrede(elvira, luz).
madrede(elvira, min).
madrede(elvira, irma).
madrede(elvira, esperanza).
madrede(ana, rafaelc).
madrede(ana, marta).
madrede(luz, rafael).
madrede(luz, sean).
madrede(luz, io).
madrede(irma, miguel).
madrede(irma, sugey).
madrede(heidi, angel).
madrede(heidi, ayme).
madrede(esperanza, ivan).
madrede(esperanza, hans).
madrede(esperanza, rubi).
madrede(esperanza, patricia).
madrede(marta, alvaro).

hijo(rafael).
hijo(sean).
hijo(io).

tio(valdemar).
tio(min).
tia(heidi).
tia(irma).
tia(esperanza).
tia(marta).


primo(angel).
primo(ivan).
primo(hans).
primo(miguel).
primo(alvaro).
prima(sugey).
prima(ayme).
prima(rubi).
prima(patricia).

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


abuelo(X, Y):-padrede(X,Z), padrede(Z,Y); madrede(X,Z), madrede(Z,Y); 
