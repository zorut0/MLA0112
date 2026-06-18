person(john, '01-01-1990').
person(mary, '12-05-1992').
person(tom, '23-07-1985').

dob(Name, DOB) :- person(Name, DOB).
