M = genmatrix1(6);
A = M(1:6,1:6);
b = M(1:end,end);
a= [A b];

opl = A\b;
g1 = gauss1(a);
g2 = gauss2(a);
[Q,R] = qr(a)
