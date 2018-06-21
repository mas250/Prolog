member2(X,[X|L]) :-!.
member2(X,[_|L]) :- member2(X,L).