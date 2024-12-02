divide_list(L, F, S) :-
    divide_list_parity(L, F, S, odd).

divide_list_parity([], [], [], _).

divide_list_parity([H|T], [H|F], S, odd) :-
    divide_list_parity(T, F, S, even).

divide_list_parity([H|T], F, [H|S], even) :-
    divide_list_parity(T, F, S, odd).
