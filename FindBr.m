b = [0.0001
0.0004
0.001
0.0021
0.0047
0.0093
]*(1000); % mT
Distance = ([3.5 3 2.5 2 1.5 1])*10; % cm
Diameter = 10; % mm
Thickness = 8; % mm
Br = zeros(size(Distance));
for i = 1:length(Distance)
    Br(i) = (abs(b(i))*2)/(((Distance(i)+Thickness)/sqrt((0.5*Diameter)^2+(Distance(i)+Thickness)^2)-(Distance(i)/sqrt((0.5*Diameter)^2+(Distance(i)^2)))));
end

avg = sum(Br)/length(Br);

% b = [0.131
% 0.436
% 0.983
% 2.05
% 4.72
% 9.27
% 26.3
% 26.62]
% V =[1.6579
% 1.6762
% 1.709
% 1.773
% 1.9337
% 2.2067
% 3.2285
% 3.2477]
% plot(Distance, b, 'r-', 'LineWidth', 2);