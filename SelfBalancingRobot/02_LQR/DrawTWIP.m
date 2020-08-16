function [outputArg1] = DrawCartPendulumSys(inputArg1)
%DRAWCARTPENDULUMSYS Summary of this function goes here
%   Detailed explanation goes here

global l r d

if ~ishandle(1) %Initialize Figure
     figure(1);
end

clf

x = inputArg1(1);
th = inputArg1(2);

% dimensions
L = l;  % pendulum length
wr = r; % wheel radius

% positions
y = wr; % cart vertical position
w1x = x-wr/2;
w1y = 0;

px = x + L*sin(th);
py = y + L*cos(th);

plot([-2 2],[0 0],'w','LineWidth',2)
hold on

rectangle('Position',[w1x,w1y,wr,wr],'Curvature',1,'FaceColor',[1 0.1 0.1],'EdgeColor',[1 1 1])

plot([x px],[y py],'w','LineWidth',2)

xlim([-2 2]);
ylim([-L/2 2*L]);
set(gca,'Color','k','XColor','w','YColor','w')
%set(gcf,'Position',[10 900 800 400])
%set(gcf, 'WindowState', 'maximized');
set(gcf,'Color','k')
%set(gcf,'InvertHardcopy','off')   

% box off
drawnow
outputArg1=0;
end

