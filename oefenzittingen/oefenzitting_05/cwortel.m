function [ x1, y1, x2, y2 ] = cwortel( a,b )
% Er klopt hier iets niet!
    ys = vierkant(1,-a,b^2/2);
    y1 = sqrt(ys(1));
    y2 = sqrt(ys(2));
    
    x1 = b/(2*y1);
    x2 = b/(2*y2);

end

