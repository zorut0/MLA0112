bird(sparrow).
bird(penguin).
bird(eagle).

can_fly(sparrow).
can_fly(eagle).

can_fly_or_not(Bird) :-
    (can_fly(Bird) -> write(Bird), write(' can fly');
     write(Bird), write(' cannot fly')).
