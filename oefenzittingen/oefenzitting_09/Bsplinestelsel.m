function [A,b] = Bsplinestelsel( t,f )
%BSPLINEMATRIX Berekent het stelsel Ac=b van interpolatievoorwaarden en
%natuurlijke voorwaarden in de (genormaliseerde) B-spline basis, voor
%equidistante knooppunten t(4),t(5),...,t(end-3) en een function handle
%f.

ft = f(t(4:end-3)); % negeer 3 eerste en 3 laatste knooppunten
b = [0; ft(:); 0];

n = length(t)-7;
A = zeros(n+3);

% interpolatievoorwaarden in t_0,...,t_n
for k = 2:n+2
    A(k,k-1:k+1) = [ 1/6   4/6   1/6 ];
end
% natuurlijke voorwaarden in t_0 en t_n
A(1,1:3) = [ 1  -2   1 ];
A(n+3,n+1:n+3) = [ 1  -2   1 ];

end

