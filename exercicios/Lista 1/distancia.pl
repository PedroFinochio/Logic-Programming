/*

Escreva o predicado Prolog distancia/3 que calcula a distância entre dois pontos no espaço bidimensional. 
Os pontos são dados como um par de coordenadas.

Exemplo de uso:

?- distancia((0,0), (3,4), X).
X = 5.0
True

?- distancia((-2.5,1), (3.5,-4), X).
X = 7.810249675906654
True

*/

distancia((X,Y),(X2,Y2),D) :-
    D is sqrt((X - X2)**2 + (Y - Y2)**2).

