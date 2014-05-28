function A = splinematrix(t)

n = length(t)-1;

A = zeros(3*(n-1),4*n);

for k = 1:n-1
    A(3*k-2:3*k,4*k-3:4*k+4) = ...
        [ t(k+1)^3      t(k+1)^2    t(k+1)  1       -t(k+1)^3       -t(k+1)^2   -t(k+1)     -1;
          3*t(k+1)^2    2*t(k+1)    1       0       -3*t(k+1)^2     -2*t(k+1)   -1          0 ;
          6*t(k+1)      2           0       0       -6*t(k+1)       -2          0           0 ];
end

