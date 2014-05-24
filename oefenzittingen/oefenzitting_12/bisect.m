function [y] = bisect(fun,a,b,epsilon)

i = 1;
x0 = a;
x1 = b;
f0 = feval(fun,x0);
f1 = feval(fun,x1);

if ((f0*f1) > 0)
   print ='stop...error'
   return
end
while (abs(x1-x0) > 2*epsilon),
   x2 = (x0+x1)/2;
   f2=feval(fun,x2);
   y(i) = x2;
   i = i + 1;
   if (f0*f2 < 0);
      x1 = x2;
   else
      x0 = x2;
      f0 = f2;
   end
end
x2 = (x0+x1)/2;
y(i) = x2;
y = y';
