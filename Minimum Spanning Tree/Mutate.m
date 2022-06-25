%
% Copyright (c) 2015, Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "license.txt" for license terms.
%
% Project Code: YPAP116
% Project Title: Minimum Spanning Tree using PSO, FA, ICA
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: S. Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com
%

function y = Mutate(x, mu)

    y = x;
    
    if rand<0.5
        r = rand(size(x));
        A = (r<=mu);
        y(A) = 1 - x(A);
        
    else
        A = find(x>=0.5);
        B = find(x<0.5);
        i1 = randsample(A, 1);
        i2 = randsample(B, 1);
        y([i1 i2]) = x([i2 i1]);
        
    end

end
