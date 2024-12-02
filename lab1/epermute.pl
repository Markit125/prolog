remove(X, [X|T], T).
remove(X, [Y|T], [Y|T1]) :-
    remove(X,T,T1).

permut([], []).
permut(List, [X|Perm]) :-
    remove(X, List, Rest),
    permut(Rest, Perm).
