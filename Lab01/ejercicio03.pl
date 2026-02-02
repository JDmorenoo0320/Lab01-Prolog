% Hechos: estudiante y su nota final en un curso
nota(ana, 4.5).
nota(luis, 2.8).
nota(maria, 3.7).
nota(juan, 5.0).
nota(pedro, 2.3).

reprueba(X):- nota(X, Y), Y < 3.0.
% 1. reprueba(pedro). true
aprueba(X):- nota(X, Y), Y >= 3.0.
% 2. aprueba(ana). true
rango(X, Min, Max):- nota(X, Y), Min =< Y, Y =< Max.
% 3. rango(ana, 1.2, 5.0). true
clasificacion(X, reprobado):- rango(X, 0.0, 2.9).
clasificacion(X, aprobado):- rango(X, 3.0, 3.9).
clasificacion(X, notable):- rango(X, 4.0, 4.4).
clasificacion(X, excelente):- rango(X, 4.5,5.0).
% 4. clasificacion(ana, X). excelente
distancia((X1, Y1), (X2, Y2), D):- D is sqrt((X2-X1)**2 + (Y2-Y1)**2).
% 5. distancia((1,1),(2,2), D).  D = 1.4142

% Caso base: lista vacía o con un solo punto -> distancia 0
distancia_total([], 0).
distancia_total([_], 0).

