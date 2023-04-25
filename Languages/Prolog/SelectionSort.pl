:- style_check(-singleton).
% Source: ChatGPT
:- dynamic logging/1.

:- assert(logging(0)).

selection_sort(List, SortedList) :-
    selection_sort(List, [], SortedList).

selection_sort([], Acc, Acc).
selection_sort(List, Acc, SortedList) :-
    min_list(List, Min),
    select(Min, List, Rest),
    selection_sort(Rest, [Min|Acc], SortedList).

main :-
    List = [10650,56341,77676,47158,34999,22009,19680,41870,31090,30668],
    selection_sort(List, SortedList),
    (logging(1) ->
        write('Sorted list: '),
        write(SortedList), nl
    ;logging(0) -> 
        nl).


