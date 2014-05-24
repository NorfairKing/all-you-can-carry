%% Probleem 1

A = [102 -201 100
    1     0   0
    0     1   0];
B = [-1 4 0
     -2 5 0
      0 1 2];
 xo_1 = [1, 0, 0]';
 xo_2 = [1, 1, 1]';
 
format long
[x,mu1] = machten(A,xo_1,20);
[y,mu2] = machten(A,xo_2,20);

relfoutA1 = abs(max(eig(A)) - mu1)/ max(eig(A))
relfoutA2 = abs(max(eig(A)) - mu2)/ max(eig(A))
figure(1), clf
semilogy(1:20,relfoutA1);
hold on
semilogy(1:20,relfoutA2);


[a,m1] = machten(B,xo_1,100);
[b,m2] = machten(B,xo_2,100);

relfoutB1 = abs(max(eig(B)) - m1)/ max(eig(B));
relfoutB2 = abs(max(eig(B)) - m2)/ max(eig(B));

figure(2), clf
semilogy(1:100,relfoutB1);
hold on
semilogy(1:100,relfoutB2);

eig(A);
eig(B);
%Theoretische convergentiefactor:
eigA = eig(A);
theoRo1 = eigA(2)/eigA(1)
eigB = eig(B)
theoRo2 = eigB(1)/eigB(2)


%Numerieke convergentiefactor:

numRoA1 = (relfoutA1(6)/relfoutA1(2))^(1/4)
numRoA2 = (relfoutA2(16)/relfoutA2(12))^(1/4)

numRoB1 = (relfoutB1(50)/relfoutB1(10))^(1/40)
numRoB2 = (relfoutB2(50)/relfoutB2(10))^(1/40)
