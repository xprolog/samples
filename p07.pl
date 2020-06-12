% P07 (**): Flatten a nested list structure

% flatten(+L1, ?L2)
% The list L2 is obtained from the list L1 by flattening, i.e., if an element
% of L1 is a list then it is replaced by its elements, recursively. 
flatten([X|Xs], Zs) :- !, 
    flatten(X, Y),
    flatten(Xs, Ys),
    append(Y, Ys, Zs).
flatten([], []) :- !.
flatten(X,[X]).


:- @begin(test).

test(-, L == [a,b,c,d,e]) :-
    flatten([a,[b,[c,d],e]], L).

:- @end(test).
