equiangular(abcd).
equiangular(efgh).
equilateral(abcd).
equilateral(ijkl).
quadrilateral(abcd).
quadrilateral(efgh).
quadrilateral(ijkl).

rectangle(X) :- equiangular(X), quadrilateral(X).

rhombus(X) :- equilateral(X), quadrilateral(X).
square(X) :- rhombus(X), rectangle(X).
oblong(X) :- rectangle(X), \+equilateral(X) .
diamond(X) :- rhombus(X), \+square(X).