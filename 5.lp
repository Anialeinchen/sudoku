{sudoku(1..9,1..9)}.

%es ist nicht so, dass in der gleichen Spalte zwei gleiche Zahlen stehen dürfen
%:- sudoku(X,Y,Z), sudoku(X,Y2,Z),Y != Y2.
%nicht richtig, aber nah dran!
{ (1..9, Y) } 9 :- Y = 1..9.
{ (X, 1..9) } 9 :- x = 1..9.
