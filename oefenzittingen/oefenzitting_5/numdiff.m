
n = -1:-0.1:-15
h = 10

x = linspace(0,10,1000)

y_1 = (f(x+h) - f(x))/h
y_2 = (f(x+h) - f(x-h))/(2*h)

err_1 = (f(x) - y_1)/y_1
err_2 = (f(x) - y_2)/y_2

plot(x, err_1)
hold on
plot(x, err_2)