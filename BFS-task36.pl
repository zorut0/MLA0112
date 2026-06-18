edge(a,b,2).
edge(a,c,1).
edge(b,d,5).
edge(c,d,2).

best_first(Start, Goal, Path) :-
    bestfs([[Start]], Goal, Path).

bestfs([Path|_], Goal, Path) :- Path = [Goal|_].
bestfs([Path|Paths], Goal, Sol) :-
    Path = [Node|_],
    findall([Next|Path],
            (edge(Node,Next,_), \+ member(Next,Path)),
            NewPaths),
    append(Paths, NewPaths, Paths1),
    sort(Paths1, Sorted),
    bestfs(Sorted, Goal, Sol).
