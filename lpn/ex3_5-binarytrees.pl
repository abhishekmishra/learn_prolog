leaf(1).
leaf(2).
leaf(3).
leaf(4).

%left(leaf(X), leaf(X)).
%right(leaf(X), leaf(X)).

%left(tree(X, Y), X).

%right(tree(X, Y), Y).

swap(leaf(X), leaf(X)).

swap(tree(X, Y), tree(U, V)):-
    swap(Y, U),
    swap(X, V).

