:- style_check(-singleton).
% Source: ChatGPT
:- dynamic logging/1.

:- assert(logging(0)).

% Quick sort implementation in Prolog
quicksort([], []).
quicksort([X|Xs], Sorted) :-
   partition(Xs, X, Left, Right),
   quicksort(Left, SortedLeft),
   quicksort(Right, SortedRight),
   append(SortedLeft, [X|SortedRight], Sorted).

% Define the partition predicate
partition([], _, [], []).
partition([X|Xs], Pivot, [X|Left], Right) :-
   X =< Pivot,
   partition(Xs, Pivot, Left, Right).
partition([X|Xs], Pivot, Left, [X|Right]) :-
   X > Pivot,
   partition(Xs, Pivot, Left, Right).

% Main function for testing quick sort
main :-
    List = [10650,56341,77676,47158,34999,22009,19680,41870,31090,30668],
    quicksort(List, SortedList),
    (logging(1) ->
        write('Sorted list: '),
        write(SortedList), nl
    ;logging(0) -> 
        nl).


