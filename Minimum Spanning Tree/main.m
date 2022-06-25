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

Choices = {'Particle Swarm Optimization', 'Firefly Algorithm', 'Imperialist Competitive Algorithm'};

ANSWER = questdlg('Select the algorithm:', ...
                  'Minimum Spanning Tree', ...
                  Choices{1}, Choices{2}, Choices{3}, ...
                  Choices{1});

if strcmpi(ANSWER, Choices{1})
    pso;
    return;
end

if strcmpi(ANSWER, Choices{2})
    fa;
    return;
end

if strcmpi(ANSWER, Choices{3})
    ica;
    return;
end
