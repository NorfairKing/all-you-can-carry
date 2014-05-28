function y = evalBspline( t, c, x )
%EVALBSPLINE Evalueer kubische spline met knooppunten t en met c de
%coefficienten in de B-spline basis:
%   s(x) = SUM_{j=-3...n-1} c_j N_j(x)
%
% -> c heeft lengte n + 3
% -> t heeft lengte n + 7 :
%        t_{-3}, t_{-2}, t_{-1}, t_0,...,t_n, t_{n+1},t_{n+2},t_{n+3}
%
% @PRE: de waarden in t zijn geordend van klein naar groot
% @PRE: length(c) == length(t) - 4

if length(c) + 4 ~= length(t)
    error('t moet precies 4 elementen meer hebben dan c.')
end
% voeg nullen toe aan c en begin en eindpunten aan t. De waarde van deze
% extra punten in t maken niet uit:
c_ext = [0;0;0; c(:) ;0;0;0];
dt = t(2)-t(1);
t_ext = [t(1)-dt*[3;2;1] ; t(:) ; t(end)+dt*[1;2;3]];

y = 0*x;
for k = 1:length(x)
    % bepaal j zodat x(k) in [t(j),t(j+1)]:
    j = find(x(k) >= t,1,'last');
    if isempty(j)
        % x(k) < t(1)
        j = 0;
    end
    % --> j is een van de waarden uit 0,1,2,...,N=length(t)
    %       t(1)    t(2)    t(3)    t(4)    t(5) ...  t(N)
    % j: 0       1       2       3       4                  N
    if x(k) <= t(1) || x(k) >= t(end)
        %  j == 0  || j == N 
        y(k) = 0;
    else
        cc = c_ext(j:j+3);
        tt = t_ext(j:j+6);
        for i = 1:3
            % c[i]_m voor m=j-3+i...j
            for m = 4:-1:i+1
                % dalende volgorde, zodat we enkel die c's overschrijven die in de i-de stap niet meer gebruikt worden
                alpha = (x(k)-tt(m))/(tt(m+4-i)-tt(m));
                cc(m) = alpha*cc(m) + (1-alpha)*cc(m-1);
            end
        end
        y(k) = cc(4);
    end
end

end