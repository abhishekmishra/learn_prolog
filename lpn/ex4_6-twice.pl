twice([], []).

twice([A], [A, A]).

twice([A|ListA], [A, A|ListAA]):-
    twice(ListA, ListAA).
