
format long e

orig = 100
x = orig;

%% Onschadelijke berekening?

n = 40;
opl1 = zeros(n,1);
opl2 = zeros(n,1);

for k = 1:n
    x = sqrt(x);
    opl1(k) = x;
end
for k = 1:n
    opl2(k) = x;
    x = x.^2;
end

%% Relatieve fout op het eindresultaat x

fout = ((orig - x)/orig)

%% Relatieve fout op de tussenresultaten

% exacte_x geeft de exacte waarden op machine-precisie na, die in theorie
% tijdens het uitvoeren van de eerste lus bekomen worden:
load exacte_x

fout1 = opl1 - exacte_x 
fout2 = opl2 - exacte_x

%% Plot relatieve fout op de tussenresultaten

figure(1)
% plot
% semilogx
% semilogy
loglog(fout1)

figure(2)
% plot
% semilogx
% semilogy
%loglog





