%% Probleem 1

A = [102 -201 100
    1     0   0
    0     1   0];
B = [-1 4 0
     -2 5 0
      0 1 2];
 xo_1 = [1, 0, 0]';
 xo_2 = [1, 1, 1]';
 
 dom_eigA1 = machten(A,xo_1,20)
 dom_eigA2 = machten(A,xo_2,20)