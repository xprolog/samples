% P05 (*): Reverse a list

% reverse(?L1, ?L2)
% L2 is the list obtained from L1 by reversing the order of the elements.
reverse(L1, L2) :-
    reverse_(L1, L2, []).

reverse_([], L2, L2) :- !.
reverse_([X|Xs], L2, Acc) :-
    reverse_(Xs, L2, [X|Acc]).


:- @begin(tests).

test(-, L == [c,b,a]) :-
    reverse([a,b,c], L).

:- @end(tests).


