rule(wet, [rain]).
rule(rain, [cloudy]).

backward_chain(Goal) :-
    rule(Goal, Subgoals),
    prove_all(Subgoals).

prove_all([]).
prove_all([H|T]) :-
    backward_chain(H),
    prove_all(T).
