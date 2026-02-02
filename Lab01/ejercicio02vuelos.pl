% Hechos: relación entre ciudades
ciudad(bogota).
ciudad(medellin).
ciudad(cali).
ciudad(cartagena).
ciudad(manizales).
ciudad(barranquilla).
ciudad(pasto).
ciudad(monteria).

% Hechos: vuelos directos
vuelo(bogota, medellin).
vuelo(medellin, cartagena).
vuelo(cali, bogota).
vuelo(bogota, cartagena).
vuelo(manizales, cartagena).
vuelo(medellin, barranquilla).
vuelo(pasto, bogota).
vuelo(bogota, pasto).

escala(X, Y):- vuelo(X, V), vuelo(V, Y).
% 1. escala(bogota, barranquilla). true
% 2. escala(cali. X). medellin, cartagena y pasto
viaje(X, Y):- escala(X, Y) ; vuelo(X,Y).
% 3. viaje(bogota, pasto). true
destinos(X, Y):- viaje(X, Y). 
% 4. destinos(bogota, X)cartagena, barranquilla, bogota, medellin, cartagena y pasto
