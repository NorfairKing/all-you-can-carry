f = @ (x) ( (exp(x.^2) - exp(-x.^2))./(2.*x.^2) )

xs = 10 .^ - (1:10)
fs = f(xs)
fs = fs'

load f_eval_exact

rel_err = (abs(fs - y_exact) ./ abs(y_exact))

figure(1)
semilogy(1:10,rel_err)

fes = []
for i = xs
    fes(end+1) = f_exact(i)
end
fes = fes'

rel_err_2 = (abs(fes - y_exact) ./ abs(y_exact))

figure(2)
semilogy(1:10,rel_err_2)