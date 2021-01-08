line(0, ".", 0, 41).
line(1, ".", 0, 20).
line(1, "#", 20, 1).
line(1, ".", 21, 20).
line(2, ".", 0, 17).
line(2, "#", 17, 7).
line(2, ".", 24, 17).
line(3, ".", 0, 14).
line(3, "#", 14, 13).
line(3, ".", 27, 14).
line(4, ".", 0, 12).
line(4, "#", 12, 4).
line(4, "`", 16, 9).
line(4, "#", 25, 4).
line(4, ".", 29, 12).
line(5, ".", 0, 10).
line(5, "#", 10, 4).
line(5, "`", 14, 13).
line(5, "#", 27, 4).
line(5, ".", 31, 10).
line(6, ".", 0, 8).
line(6, "#", 8, 3).
line(6, "`", 11, 19).
line(6, "#", 30, 3).
line(6, ".", 33, 8).
line(7, ".", 0, 6).
line(7, "#", 6, 5).
line(7, " ORDEM E PROGRESSO ", 11, 1).
line(7, "#", 30, 5).
line(7, ".", 35, 6).
line(8, ".", 0, 8).
line(8, "#", 8, 3).
line(8, "`", 11, 19).
line(8, "#", 30, 3).
line(8, ".", 33, 8).
line(9, ".", 0, 10).
line(9, "#", 10, 4).
line(9, "`", 14, 13).
line(9, "#", 27, 4).
line(9, ".", 31, 10).
line(10, ".", 0, 12).
line(10, "#", 12, 4).
line(10, "`", 16, 9).
line(10, "#", 25, 4).
line(10, ".", 29, 12).
line(11, ".", 0, 14).
line(11, "#", 14, 13).
line(11, ".", 27, 14).
line(12, ".", 0, 17).
line(12, "#", 17, 7).
line(12, ".", 24, 17).
line(13, ".", 0, 20).
line(13, "#", 20, 1).
line(13, ".", 21, 20).
line(14, ".", 0, 41).
 
printrep(_, 0) :- !.
printrep(X, N) :- write(X), N1 is N-1, printrep(X, N1).

printflag() :- printline(0, 0).

printline(L, P) :-
    line(L, C, P, O),
    printrep(C, O),
    atom_length(C, CL),
    NP is P + O - 1 + CL,
    NP =< 41,
    line(L, _, NP, _),
    printline(L, NP), !.
printline(L, _) :- 
    nl, NL is L + 1,
    line(NL, _, _, _), !,
    printline(NL, 0).
printline(_, _) :- !.
