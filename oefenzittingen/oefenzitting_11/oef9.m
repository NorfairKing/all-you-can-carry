% Probleem 1
t = linspace(-1,1,10)
A = splinematrix(t)
spy(A)
s = size(A)
r = rank(A)

%% Probleem 2
t = linspace(-1,1,10)
f = @exp
A = splinestelsel(t,f)
spy(A)

%% Probleem 3
t = -1:0.25:1
f = @ (x)(1/(1+25*x^2))
[A, b] = splinestelsel(t,f)
c = A\b

%% Probeersel
t = -3:8;
N = length(t);
c = rand(1,N-4);
x = linspace(-5,10,1000);
figure
plot(x,evalBspline(t,c,x))

%% Probleem 4
t = -3:8;
lt = length(t);
c = eye(lt-4);
hold on
for i=1:5
    plot(x,evalBspline(t,c(1:end,i),x))
end

%% Probleem 5
%wut

%% Probleem 6
t = 1.75:0.25:1.75;
f = @ (x)(1./(1+25*x.^2))
[A,b] = Bsplinestelsel(t,f)
spy(A)
%error?
