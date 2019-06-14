esPapa(marcelo,gabriel).
esMama(mariana,gabriel).
esPapa(marcelo,gaston).
esMama(mariana,gaston).

esPapa(pablo,lucia).
esMama(laura,lucia).
esPapa(pablo,nacho).
esMama(laura,nacho).

esPapa(hugo,marcelo).
esMama(susana,marcelo).
esPapa(hugo,ruben).
esMama(susana,ruben).

esPapa(roberto,mariana).
esMama(coral,mariana).
esPapa(roberto,andres).
esMama(coral,andres).
esPapa(roberto,pablo).
esMama(coral,pablo).

esTio(Tio,Sobrino):-
esPapa(Papa,Sobrino),
esHermano(Tio,Papa).
esTio(Tio,Sobrino):-
esMama(Mama,Sobrino),
esHermano(Tio,Mama).

esHermano(X,Y):-
esPapa(Papa,Y),
esPapa(Papa,X),
(Y \= X). 

esAbuelo(Abuelo,Nieto):-
padre(Papa,Nieto),
padre(Abuelo,Papa).

padre(Encargado,Hijo):-
esPapa(Encargado,Hijo).
padre(Encargado,Hijo):-
esMama(Encargado,Hijo).

esPrimo(Primo,Persona):-
padre(Tio,Primo),
esTio(Tio,Persona).

descendiente(Pariente,Persona):-











