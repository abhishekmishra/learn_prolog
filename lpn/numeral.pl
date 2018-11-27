numeral(0).
numeral(succ(X)):-numeral(X).

add(0,Y,Y).
add(succ(X),Y,succ(Z)) :-
    add(X, Y, Z).

greater_than(succ(X), X).

greater_than(succ(Y), X):-
    greater_than(Y, X).
