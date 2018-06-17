% P04 (*): Find the number of elements of a list

% Note: length(?L, ?N) is predefined
:- set_prolog_flag(redefine_warnings, off). 

% length(+L, ?N)
% The list L contains N elements.
length([], 0).
length([_|L], N) :-
    length(L, N1),
    N is N1 + 1.


:- @begin(tests).

test(-, N == 3) :-
    length([a,b,c], N).

:- @end(tests).
