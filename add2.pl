member2(X,[X|_]) :- !.
member2(X,[_|L]) :- member2(X,L).

add(X,L,L) :- member2(X,L).
add(X,L,[X|L]) :- \+member2(X,L).