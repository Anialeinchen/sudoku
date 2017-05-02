81{sudoku(1..9,1..9,1..9)}81.

%es ist nicht so, dass in der gleichen Spalte zwei gleiche Zahlen stehen dürfen
%:- sudoku(X,Y,Z), sudoku(X,Y2,Z),Y != Y2.
%nicht richtig, aber nah dran!
1 { sudoku(1..9, Y, Z) } 1 :- Y = 1..9, Z = 1..9.
1 { sudoku(X, 1..9, Z) } 1 :- X = 1..9, Z = 1..9.
1 { sudoku(X, Y, 1..9) } 1 :- X = 1..9, Y = 1..9.


