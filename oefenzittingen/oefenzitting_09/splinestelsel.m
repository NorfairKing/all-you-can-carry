function [A,b] = splinestelsel( t,f )
%BSPLINEMATRIX Berekent voor kubische splines het stelsel Ac=b van
%continuiteitsvoorwaarden, interpolatievoorwaarden en natuurlijke
%voorwaarden in de klassieke basis 
%   s(x) = aj x^3 + bj x^2 + cj x + dj,         x in [t(j),t(j+1)],
%voor knooppunten t(4),t(5),...,t(end-3) en een function handle f.

n = length(t)-1;

A = zeros(4*n);
b = zeros(4*n,1);

A(1:3*(n-1),:) = splinematrix(t);

% interpolatievoorwaarden
% t_0,...,t_(n-1)
for k = 1:n
    A(3*(n-1)+k,4*k-3:4*k) = [ t(k)^3  t(k)^2  t(k)  1 ];
    b(3*(n-1)+k) = f(t(k));
end
% t_n
A(4*n-2,4*n-3:4*n) = [ t(n+1)^3  t(n+1)^2  t(n+1)  1 ];
b(4*n-2) = f(t(n+1));

% natuurlijke voorwaarden in t_0 en t_n
% -------------
A(4*n-1,1:4) = [6*t(1)  2   0   0];
b(4*n-1) = 0; 
A(4*n,4*n-3:4*n) = [6*t(n+1)  2   0   0];
b(4*n) = 0; 

% % -- not-a-knot (zoals in MATLAB spline.m) --
% % -------------------------------------------
% % 3e afg in t_1 en t_(n-1) is ook continu
% A(4*n-1,1:8) =     [ 6  0  0  0  -6  0  0  0];
% A(4*n,4*n-7:4*n) = [ 6  0  0  0  -6  0  0  0];


end


