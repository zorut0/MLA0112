% State: monkey position, box position, has_banana?
move(state(monkey_floor, box_floor, no),
     state(monkey_box, box_floor, no)) :- write('Monkey climbs box'), nl.

move(state(monkey_box, box_floor, no),
     state(monkey_box, box_floor, yes)) :- write('Monkey grabs banana'), nl.
