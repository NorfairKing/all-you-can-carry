function [ p ] = bepaal_p( b )
%BEPAAL_P Summary of this function goes here
%   Detailed explanation goes here
p = 1;
z = b;
while (z + 1) - z == 1
    p = p + 1;
    z = z * b;
end
return
end

