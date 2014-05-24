function [y] = secant(fun,a,b,epsilon,kmax)

i = 1;
x0 = a;
x1 = b;

f0 = feval(fun,x0);
for k = 1:kmax,
   if ( abs(x1-x0) < epsilon )
      print = 'convergentie bereikt'
      y = y';
      return
   else
      f1 = feval(fun,x1);
      x2 = x1 - (x1-x0)*f1/(f1-f0);
      y(i) = x2;
      i = i + 1;
      x0 = x1;
      f0 = f1;
      x1 = x2;
   end
end
print = 'geen convergentie bereikt na kmax stappen'
      y = y';

