combine1([],[],[]).

combine1([A],[B],[A,B]).

combine1([A|List1],[B|List2], [A,B|List3]):-
    combine1(List1, List2, List3).

combine2([],[],[]).

combine2([A],[B],[[A,B]]).

combine2([A|List1],[B|List2], [[A,B]|List3]):-
    combine2(List1, List2, List3).

combine3([],[],[]).

combine3([A],[B],[j(A,B)]).

combine3([A|List1],[B|List2], [j(A,B)|List3]):-
    combine3(List1, List2, List3).
