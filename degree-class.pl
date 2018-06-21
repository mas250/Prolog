class(X,Y) :- mark(X,Z), class_of(Z,Y).

class_of(Z,Y) :- Z>=69.5, Y=first.
class_of(Z,Y) :- Z>=59.5, Y=uppersecond.
class_of(Z,Y) :- Z>=49.5, Y=lowersecond.
class_of(Z,Y) :- Z>=39.5, Z<= 49.5, Y=third.
class_of(Z,Y) :- Z< 39.5, Y=fail.

mark(john,45).
mark(mary,67).
mark(tom,73).
mark(bill,38).
mark(anne,47).
mark(sue,52).