%todo: generiere alle mögliche SUDOKU Lösungen und dann begrenze die mit Constrains
%diagonal, horizontal, dreierblöcken, alle Zahlen



%das ist möglich - die Ausgabe ist dann sudoku(1,1,1), ... sudoku(9,9,9)
sudoku(1..9,1..9,1..9).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%vielleicht nicht nötig, ester Draft
%grid(G).
%grid(1..9).

%zelle(X,Y)

zelle(1,1). zelle(2,1). zelle(3,1).
zelle(1,2). zelle(2,2). zelle(3,2).
zelle(1,3). zelle(2,3). zelle(3,1).

%zahl(N)
zahl(1..9).
%ende des ersten Drafts
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% beide schreibweisen sind gleichgültig (mit und ohne "=" )

% {} an der Stelle bedeuten es werden Teilmengen gebaut, in diesem Fall der Größe 1, also je

% wenn es einen Node(3) gibt, dann existiert genau ein Atom assign(3, irgendeine Farbe)  
%{ assign(N,C) : color(C) } = 1 :- node(N).

% wenn es einen Node(3) gibt, dann existieren genau drei Atome assign(3, irgendeine Farbe), die unterschiedlich sind  
%{ assign(N,C) : color(C) } = 3 :- node(N).

% error, wir haben nur 3 Farben  
%{ assign(N,C) : color(C) } = 4 :- node(N).

%todo: nachfragen, welche Möglichkeiten es noch gibt
% wenn es einen Node(3) gibt, dann existieren genau drei Atome assign(3, irgendeine Farbe), die unterschiedlich sind  
%{ assign(M,C) : color(C, N) } = 2 :- node(N).

%initial(X,Y,N).


%rechte Seite ist eine Zuweisung

sudoku(X,Y,Z) :- initial(X,Y,Z).


initial(1,1,5). initial(1,2,3). initial(1,5,7).
initial(2,1,6). initial(2,4,1). initial(2,5,9). initial(2,6,5).
initial(3,2,9). initial(3,3,8). initial(3,8,6).
initial(4,1,8). initial(4,5,6). initial(4,9,3).
initial(5,1,4). initial(5,4,8). initial(5,6,3). initial(5,9,1).
initial(6,1,7). initial(6,5,2). initial(6,9,6).
initial(7,2,6). initial(7,7,2). initial(7,8,8).
initial(8,4,4). initial(8,5,1). initial(8,6,9). initial(8,9,5).
initial(9,5,8). initial(9,8,7). initial(9,9,9).


%alles wird angezeigt, man darf mehrere shows nacheinander machen
%   /zahl heißt Anzahl der Eingabeparameter
#show sudoku/3.

#show initial/3.

#show zelle/2.


input:
x(1..9).
#show x/1.

output:
x(1).
x(2).
x(3).
x(4).
x(5).
x(6).
x(7).
x(8).
x(9).
#show x/1.

conclusion: capital letters are not allowed as binary predicates
