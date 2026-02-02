perro(firulais).
perro(bruno).
perro(max).
gato(misu).
gato(luna).
gato(chanel).
gato(orion).
ave(piolin).

dueno(ana, firulais).
dueno(ana, misu).
dueno(luis, luna).
dueno(luis, orion).
dueno(luis, firulais).
dueno(maria, piolin).
dueno(julia, chanel).
dueno(pedro, bruno).

tiene_perro(X):- dueno(X,Y), perro(Y).
% 1. tiene_perro(X). ana, luis y pedro
tiene_gato(X):- dueno(X,Y), gato(Y).
% 2. tiene_gato(X). ana, luis(x2) y julia.
tiene_ave(X):- dueno(X,Y), ave(Y).
multiples_mascotas(X):- (tiene_perro(X), tiene_gato(X)) ; (tiene_perro(X), tiene_ave(X)) ; (tiene_gato(X),tiene_ave(X)). 
% 3. multiples_mascotas(X). ana, luis(x2).
amante_mascotas(X):- tiene_perro(X), tiene_gato(X).
% 4 amante_mascotas(X). ana, luis(x2).
comparten_mascota(X, Y):- dueno(X, V), dueno(Y, V).
% 5. comparten_mascota(ana, luis). true
tipo_mascota(X, perro):- tiene_perro(X).
tipo_mascota(X, gato):- tiene_gato(X).
tipo_mascota(X, ave):- tiene_ave(X).
% 6. tipo_mascota(luis, X) perro, gato(x2).
