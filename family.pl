parent(david,jeremy).
parent(david,peter).
parent(david,simon).
parent(pat,jeremy).
parent(pat,peter).
parent(pat,simon).
parent(jeremy,william).
parent(jeremy,tim).
parent(jeremy,josephine).
parent(sandra,william).
parent(sandra,tim).
parent(sandra,josephine).
parent(peter,rosemary).
parent(peter,jonathan).
parent(carol,rosemary).
parent(carol,jonathan).
parent(simon,miranda).
parent(simon,emily).
parent(clare,miranda).
parent(clare,emily).

male(david).
male(jeremy).
male(peter).
male(simon).
male(william).
male(tim).
male(jonathan).

female(pat).
female(sandra).
female(carol).
female(clare).
female(rosemary).
female(josephine).
female(miranda).
female(emily).

father(X,Y) :- \+female(X), parent(X,Y).
mother(X,Y) :- female(X), parent(X,Y).
grandparent(X,Y) :- parent(X,Z), parent(Z,Y).
son(X,Y) :- male(X), parent(Y,X).
daughter(X,Y) :- female(X), parent(Y,X).
grandfather(X,Y) :- male(X), parent(X,Z), parent(Z,Y).
grandmother(X,Y) :- female(X), parent(X,Z), parent(Z,Y).
grandson(X,Y) :- male(X), parent(X,Z), parent(Z,Y).

brother(X,Y) :- \+daughter(X,Z), parent(Z,Y).
sister(X,Y) :- \+son(X,Z), parent(Z,Y).