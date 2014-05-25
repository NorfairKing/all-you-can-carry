function [ b ] = bepaal_b()
%BEPAAL_B Summary of this function goes here
%   Detailed explanation goes here
A = 1;
while (A+1) - A == 1
    A = 2*A;
end
i = 1;
while (A+i) == A
    i = i + 1;
end
b = (A + i) - A;
return

end

