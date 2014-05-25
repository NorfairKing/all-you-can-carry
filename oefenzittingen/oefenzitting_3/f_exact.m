function [ y ] = f_exact( x )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    MAX = 100;
    
    ks = 1:100
    
    row = (2 .* x .^ (2 + 4.*ks)) ./ (factorial((2+4.*ks)./2))
    
    y = sum(row) / (2 * x ^ 2)

end

