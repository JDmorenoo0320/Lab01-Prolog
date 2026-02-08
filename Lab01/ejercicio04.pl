fibo(0, 0).
fibo(1, 1).
fibo(N, F) :-
 N > 1,
 N1 is N - 1,
 N2 is N - 2,
 fibo(N1, F1),
 fibo(N2, F2),
 F is F1 + F2.

%EJEMPLOS DE SALIDA
% fibo(6,X).  8
% fibo(4,X).  3
% no funciona hacer fibo(X,4) Por ejemplo 
% porque prolog no retorna funciones aritmeticas
