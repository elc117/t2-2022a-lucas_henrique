female(lucia).

female(eunice).
female(elza).
female(vanda).
female(sandra).
female(ines).

female(patrícia).
female(emanueli).
female(miriam).

female(mariane).

male(maximino).
male(gerônimo).
male(cleucir).

male(joão).
male(vagner).
male(luigi).
male(henrique).
male(erick).
male(henri).
male(guilherme).


parent(lucia, eunice).
parent(lucia, elza).
parent(lucia, vanda).
parent(lucia, sandra).
parent(lucia, ines).
parent(lucia, cleucir).
parent(lucia, maximino).
parent(lucia, gerônimo).

parent(eunice, henrique).
parent(elza, erick).
parent(elza, henri).
parent(vanda, guilherme).
parent(vanda, patrícia).
parent(ines, miriam).
parent(maximino, joão).
parent(maximino, vagner).
parent(gerônimo, luigi).
parent(cleucir, emanueli).

father(X, Y) :- 
  parent(X, Y), 
  male(X).

mother(X, Y) :-
  parent(X, Y), 
  female(X).

son(X, Y) :- 
  parent(Y, X), 
  male(X).

daughter(X, Y) :- 
  parent(Y, X), 
  female(X).

brother(X,Y) :-
  parent(C,X),
  parent(D,Y),
  C=D , X\=Y.

uncle(X,Y) :-
  parent(C,X),
  brother(C,Y).
  

  


