shift_std([Head|Tail], Shifted) :-
    remove(Head, [Head|Tail], L),
    append(L, [Head], Shifted).


push([], L, L).
push([X|Tail], L, [X|Res]) :-
    push(Tail, L, Res).

remove(X, [X|T], T).
remove(X, [Y|T], [Y|T1]) :-
    remove(X,T,T1).


shift_my([Head|Tail], Shifted) :-
    remove(Head, [Head|Tail], L),
    push(L, [Head], Shifted).

shift_n_my(L, 0, Shifted) :-
    Shifted = L.

shift_n_my(L, N, Shifted) :-
    N1 is N-1,
    shift_my(L, Shifted1),
    shift_n_my(Shifted1, N1, Shifted).

