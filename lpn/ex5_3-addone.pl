addone([A], [B]):-
    B is A+1.

addone([A|ListA], [B|ListB]):-
    B is A+1,
    addone(ListA, ListB).
