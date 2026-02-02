% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

#const n=2.

dim(1..n*n).

subgrid(X,Y,1+((X-1)/n)*n + (Y-1)/n) :- dim(X), dim(Y).

init(X,Y) :- initial(X,Y,N).

poss(X,Y,N) :- initial(X,Y,N).
poss(X,Y,D) :- dim(X), dim(Y), dim(D), not init(X,Y).

1 { sudoku(X,Y,N) : poss(X,Y,N) } 1 :- dim(X), dim(Y).
1 { sudoku(X,Y,N) : poss(X,Y,N) } 1 :- dim(X), dim(N).
1 { sudoku(X,Y,N) : poss(X,Y,N) } 1 :- dim(Y), dim(N).

:- initial(X,Y,N), not sudoku(X,Y,N).

#show sudoku/3.
#show subgrid/3.
