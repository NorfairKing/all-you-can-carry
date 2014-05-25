
format long e

x = 100;

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

% fout = 

%% Relatieve fout op de tussenresultaten

% exacte_x geeft de exacte waarden op machine-precisie na, die in theorie
% tijdens het uitvoeren van de eerste lus bekomen worden:
load exacte_x

% fout1 = 
% fout2 = 

%% Plot relatieve fout op de tussenresultaten

figure(1)
% plot
% semilogx
% semilogy
% loglog

figure(2)
% plot
% semilogx
% semilogy
% loglog





