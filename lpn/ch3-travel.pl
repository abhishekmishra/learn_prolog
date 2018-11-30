﻿byCar(auckland,hamilton).
byCar(hamilton,raglan).
byCar(valmont,saarbruecken).
byCar(valmont,metz).

byTrain(metz,frankfurt).
byTrain(saarbruecken,frankfurt).
byTrain(metz,paris).
byTrain(saarbruecken,paris).

byPlane(frankfurt,bangkok).
byPlane(frankfurt,singapore).
byPlane(paris,losAngeles).
byPlane(bangkok,auckland).
byPlane(singapore,auckland).
byPlane(losAngeles,auckland).

% Write a predicate travel/2 which determines whether it is possible to
% travel from one place to another by chaining together car, train, and
% plane journeys. For example, your program should answer yes to the
% query travel(valmont,raglan).

travel(X, Y) :-
    byCar(X, Y);
    byTrain(X, Y);
    byPlane(X, Y).

travel(X, Y) :-
    (
    byCar(X, Z);
    byTrain(X, Z);
    byPlane(X, Z)
),
    travel(Z, Y).

% So, by using travel/2 to query the above database, you can find out
% that it is possible to go from Valmont to Raglan. If you are planning
% such a voyage, that’s already something useful to know, but you would
% probably prefer to have the precise route from Valmont to Raglan. Write
% a predicate travel/3 which tells you which route to take when
% travelling from one place to another. For example, the program should
% respond
%X = go(valmont,metz, go(metz,paris,
%go(paris,losAngeles)))
%to the query travel(valmont,losAngeles,X).

go(X, Y, T) :-
    (
    byCar(X, Y);
    byTrain(X, Y);
    byPlane(X, Y)
),
    T=go(X,Y).

go(X, Y, T) :-
    (
    byCar(X, Z);
    byTrain(X, Z);
    byPlane(X, Z)
),
    T=go(X,Z, U),
    go(Z, Y, U).


