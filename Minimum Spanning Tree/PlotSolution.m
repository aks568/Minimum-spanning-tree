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

function PlotSolution(sol,model)

    X=model.X;
    Y=model.Y;
    n=model.n;
    
    A=sol.A;
    
    for i=1:n
        for j=i+1:n
            if A(i,j)~=0
                plot([X(i) X(j)],[Y(i) Y(j)],'b','LineWidth',2);
                hold on;
            end
        end
    end
    plot(X,Y,'ko','MarkerSize',12,'MarkerFaceColor',[1 1 0]);
    hold off;

end