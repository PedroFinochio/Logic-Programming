/*

Escreva o predicado minimo/2 que encontra o menor valor numérico de uma dada lista de números.

Exemplo de uso:
?- minimo([4, 6, 8, 3, 5, 7], Result).
Result = 3
True

*/

minimo([X],X). % o minimo de uma lista que contém apenas 1 elemento, é o próprio elemento.
minimo([H|T],X) :- % comparando o minimo da cauda (M) com a cabeça da lista
    minimo(T,M),
    (H < M -> X = H ; X = M).

/*

Exemplo de funcionamento:

minimo([4, 2, 8, 1], X). --> H = 4 T = [2,8,1]

minimo([2, 8, 1], M),
(4 < M -> X = H ; X = M)

minimo([8, 1], M1),
(2 < M1 -> M = 2 ; M = M1)

minimo([1], M2),
(8 < M2 -> M1 = 8 ; M1 = M2)

minimo([1], M2).
M2 = 1
 
minimo([1], M2) → M2 = 1

(8 < 1) → falso, então M1 = 1

(2 < 1) → falso, então M = 1

(4 < 1) → falso, então X = 1

*/

