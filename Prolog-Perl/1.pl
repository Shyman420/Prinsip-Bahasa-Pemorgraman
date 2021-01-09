parent(john,sarah).
parent(john,jim).
parent(mary,sarah).
parent(mary,jim).
parent(sarah,betty).
parent(dave,betty).
parent(jim,jill).
parent(jim,susan).
parent(kate,jill).
parent(kate,susan).
female(sarah).
female(mary).
female(betty).
female(jill).
female(kate).
female(susan).
male(john).
male(jim).
male(dave).

grandfather(X,Y) :- male(X), parent(Z,Y), parent(X,Z).
aunt(X,Y) :- female(X), parent(X, D), parent(B, D), parent(A, B), parent(A, C), parent(C, Y), \+(C=B). 