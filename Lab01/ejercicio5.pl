color(red).
color(blue).
color(yellow).
color(green).

adjacent(X,Y):- X \= Y.

map(A, B, C, D, E) :-
    adjacent(A, B), adjacent(A, D), adjacent(A, E),
    adjacent(B, C), adjacent(B, D), adjacent(B, E),
    adjacent(C, D), adjacent(C, E),
    adjacent(D, E).

% map(red, blue, red, green, yellow).     true porque A y C no son adyacentes 
% map(red, blue, yellow, green, green). 	false porque D y E son adyacentes
