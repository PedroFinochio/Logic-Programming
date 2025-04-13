/*

Implemente o algoritmo de Euclides para calcular o Máximo Divisor Comum de dois números inteiros não negativos. 

Exemplo de uso:
?- mdc(57, 27, X).
X = 3
True

*/

mdc(X,0,X).
mdc(X,Y,M) :-
    Y =\= 0,
    R is X mod Y,
    mdc(Y,R,M).


