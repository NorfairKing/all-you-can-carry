
n = 0:-0.1:-15;
h = 10 .^n;

k1 = 1;
k2 = 2;

x = zeros(1,length(n));


y_1 = (f(x+h) - f(x))./h;
y_2 = (f(x+h) - f(x-h))./(2*h);

err_1 = abs((f(x) - y_1)./y_1)
err_2 = abs((f(x) - y_2)./y_2)

figure(1)
loglog(h, err_1)
hold on
loglog(h, h .^k1,'r--')
loglog(h, eps./(2.*h),'g')
figure(2)
loglog(h, err_2)
hold on
loglog(h, h .^k2,'r--')
loglog(h, eps./(2.*h),'g')