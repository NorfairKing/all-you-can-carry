%x = 0.1, n = 20;  %(1)
%x = 0.8, n = 20;  %(2)
%x = 20 , n = 100; %(3)
x = -20 , n = 100; %(4)

format long e

t = x .^ (0:n) ./ factorial(0:n);
t'
y = cumsum(t);
y'
correct = exp(x);

abs_err = abs(+y-correct)'
rel_err = abs((y-correct)/correct)'

semilogy(abs_err)
hold all
semilogy(rel_err)
hold all
semilogy(0:n-1,abs(t(2:n+1)),'r--')