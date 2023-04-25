:- style_check(-singleton).
% Source: ChatGPT
:- dynamic logging/1.

:- assert(logging(0)).

bubble_sort(List, Sorted) :-
    length(List, Length),
    length(Sorted, Length),
    bubble_sort_(List, Sorted).

bubble_sort_([A,B|Rest], [B,A|SortedRest]) :-
    A > B,
    !,
    bubble_sort_(Rest, SortedRest).

bubble_sort_([Head|Rest], [Head|SortedRest]) :-
    bubble_sort_(Rest, SortedRest).

bubble_sort_([], []) :- !.

main :-
    List = [10650,56341,77676,47158,34999,22009,19680,41870,31090,30668],
    bubble_sort(List, SortedList),
    (logging(1) ->
        write('Sorted list: '),
        write(SortedList), nl
    ;logging(0) -> 
        nl).


