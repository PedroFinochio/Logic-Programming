nomes([ana,pedro,paulo,joao]).

% variáveis são usadas para representar elementos desconhecidos e elementos genéricos em listas
lista([A,B,pedro]).

% Um número indeterminado de elementos genéricos na cauda de uma lista pode ser representado por | ("resto") seguida de uma variável.
rosas([rosa,cravo | X]). 

% -----------------------------------------------------------------------------------------------------------------------------------------

% verificando se um elemento pertence a uma lista qualquer. 
pertence(X,[X|Y]). % X pertence ao primeiro elemento da lista ? 
pertence(X,[Primeiro|Resto]):-pertence(X,Resto). % X pertence ao resto da lista ? 

% -----------------------------------------------------------------------------------------------------------------------------------------

% relação de concatenação:
ap(L1,L2,L3). % L1 e L2 são listas e L3 é a concatenacao entre L1 e L2.
ap([],L2,L2). % se o L1 e uma lista vazia, L2 = L3.

/*Se o primeiro elemento não é uma lista vazia, então ele tem cabeça e cauda. Seja o primeiro
argumento a seguinte lista genérica [X|L1]. O resultado da concatenação desta lista com a lista
L2 é uma lista [X|L3], onde L3 é a concatenação de L1 (cauda da primeira lista), com L2
(segunda lista).
*/
ap([X|L1],L2,[X|L3]):-ap(L1,L2,L3).

% X pertence a uma lista L, se L pode ser decomposta em duas listas tal que a segunda lista tenha o elemento X como cabeça.
pertence2(X,L):-ap(_,[X|_],L).

% -----------------------------------------------------------------------------------------------------------------------------------------


% Relacao apaga:
apaga(_,[],[]). % caso base: lista vazia.
apaga(X,[X|CAUDA],CAUDA):- !. % se X e a cabeca da lista, o resto sera a cauda (! para quando encontramos X).
apaga(X,[Y|Z],[Y|Z1]):-apaga(X,Z,Z1). % se X e a cauda, entao ele sera apagado da cauda.
