
{sudoku(1..9,1..9,1..9)}=81.

%es ist nicht so, dass in der gleichen Spalte zwei gleiche Zahlen stehen dürfen
:- sudoku(X,Y,Z), sudoku(XX,Y,Z), X!=XX, Z==Z.
%es ist nicht so, dass in der gleichen Reihe zwei gleiche Zahlen stehen dürfen
:- sudoku(X,Y,Z), sudoku(X,YY,Z), Y!=YY, Z==Z.
%es ist nicht so, dass zwei gleiche Zahlen in einer Diagonale stehen dürfen
:- sudoku(X,Y,Z), sudoku(XX,YY,Z), Y!=YY, X!=XX, Z==Z, (X,Y,Z)!=(XX,YY,Z), X-Y == XX-YY.
%es ist nicht so, dass zwei gleiche Zahlen in einer Diagonale stehen dürfen
:- sudoku(X,Y,Z), sudoku(XX,YY,Z), Y!=YY, X!=XX, Z==Z, (X,Y,Z)!=(XX,YY,Z), X+Y == XX+YY.

%es ist nicht so, dass man Stellen belegen darf, die schon belegt wurden
%rechte Seite ist eine Zuweisung

initial(1,1,5). initial(1,2,3). initial(1,5,7).
initial(2,1,6). initial(2,4,1). initial(2,5,9). initial(2,6,5).
initial(3,2,9). initial(3,3,8). initial(3,8,6).
initial(4,1,8). initial(4,5,6). initial(4,9,3).
initial(5,1,4). initial(5,4,8). initial(5,6,3). initial(5,9,1).
initial(6,1,7). initial(6,5,2). initial(6,9,6).
initial(7,2,6). initial(7,7,2). initial(7,8,8).
initial(8,4,4). initial(8,5,1). initial(8,6,9). initial(8,9,5).
initial(9,5,8). initial(9,8,7). initial(9,9,9).

%evtl X==XX
sudoku(X,Y,Z):- initial(X,Y,Z).
#show sudoku/3.

%clingo test.lp 2