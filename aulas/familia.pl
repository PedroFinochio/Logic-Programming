pai(joao,lucas). 
pai(joao,joaquim).
pai(pedro,silvia).
pai(joaquim,bruno).

mae(maria,lucas).
mae(maria,joaquim).
mae(laura,silvia).
mae(silvia,bruno).

avo_paterno(X,Z):-pai(Y,Z),pai(X,Y).
avo_materno(X,Z):-pai(X,Y),mae(Y,Z).
avoh_paterna(X,Z):-mae(X,Y),pai(Y,Z).
avoh_materna(X,Z):-mae(X,Y),mae(Y,Z).

antecessor(X,Y):-pai(X,Y).
antecessor(X,Y):-mae(X,Y).
antecessor(X,Y):-pai(X,Z),antecessor(Z,Y).
antecessor(X,Y):-mae(X,Z),antecessor(Z,Y).

tem_filho(X):-pai(X,_).
tem_filho(X):-mae(X,_).

irmao_ou_irma(X,Y) :-
    X \= Y,
    pai(P,X),pai(P,Y) ; mae(M,X),mae(M,Y).
