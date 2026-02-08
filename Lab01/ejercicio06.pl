% 1. verificar si un numero es miembro de una lista
miembro(X, [X|_]).
miembro(X, [_|T]) :- miembro(X, T). 
% 1. miembro(3, [1,2,3,4]).		true
% 1. miembro(X, [1,2,3,4]). 	1,2,3,4

%. 2. calcular la longitud de una lista
longitud([], 0). 
longitud([_|T], N) :- longitud(T, N1), N is N1 + 1. 
% 2. longitud([1,2,3,4], N). 	4

% 3. concatenar 2 listas
concatenar([], L, L).
concatenar([H|T1], L2, [H|T3]) :- concatenar(T1, L2, T3).
% 3. concatenar([1,2],[3,4],X).		[1,2,3,4]


%5. revertir una lista-
invertir([], []).
invertir([H|T], R):- invertir(T, RT), concatenar(RT, [H], R).
% 5. invertir([1,2,3],X).	[3,2,1]

% 6. verificar si la lista es palindroma
palindroma([]).
palindroma([_]).
palindroma(L):- invertir(L,X), L == X. 	
% 6. palindroma([1,2,3])	true
% 6. palindroma([a,b])		false
