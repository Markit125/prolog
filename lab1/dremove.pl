remove(X, [X|T], T).
remove(X, [Y|T], [Y|T1]) :-
    remove(X,T,T1).
