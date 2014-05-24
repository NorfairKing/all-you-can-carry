function [y] = dekker(fun,a,b,epsilon)

x0=a;
f0 = feval(fun,x0);
x1=b;
f1 = feval(fun,x1);

if ( f0*f1 > 0 ) 
   print = 'fout, stop...'
   return
end
k=1;
y1=x0;
y_1=y1+1;
y0=y1+0.5;
while ( abs(y1-x1) > 2*epsilon )
   if ( ~(y1==y_1) )
      d = f1*(x1-x0)/(f1-f0);
      if ( ( (x1-y1)*d < 0 ) | ( abs(d) > abs(x1-y1) ) )
         d = (x1-y1)/2;
      end 
   else
      d = (x1-y1)/2;
   end
   x0 = x1;
   f0 =f1;
   y_1 = y0;
   y0 = y1;
   x1 = x1 - d;
   f1 = feval(fun,x1);
   if ( f0*f1 < 0 )
      y1 = x0;
   end
   y(k)=(x1+y1)/2;
   k=k+1;
end
y=y';
print ='convergentie bereikt'
