function [outputArg1] = DrawCartPendulumSys(inputArg1)
%DRAWCARTPENDULUMSYS Summary of this function goes here
%   Detailed explanation goes here

if ~ishandle(1) %Initialize Figure
     figure(1);
end

clf

x = inputArg1(1);
th = inputArg1(2);

% kinematics
% x = 3;        % cart position
% th = 3*pi/2;   % pendulum angle

% dimensions
L = 2;  % pendulum length
W = 1;  % cart width
H = 0.5; % cart height
wr = .2; % wheel radius
mr = .2; % mass radius

% positions
% y = wr/2; % cart vertical position
y = wr/2+H/2; % cart vertical position
w1x = x-.9*W/2;
w1y = 0;
w2x = x+.9*W/2-wr;
w2y = 0;

px = x + L*sin(th);
py = y + L*cos(th);

plot([-10 10],[0 0],'w','LineWidth',2)
hold on
rectangle('Position',[x-W/2,y-H/2,W,H],'Curvature',.1,'FaceColor',[1 0.1 0.1],'EdgeColor',[1 1 1])
rectangle('Position',[w1x,w1y,wr,wr],'Curvature',1,'FaceColor',[1 1 1],'EdgeColor',[1 1 1])
rectangle('Position',[w2x,w2y,wr,wr],'Curvature',1,'FaceColor',[1 1 1],'EdgeColor',[1 1 1])

plot([x px],[y py],'w','LineWidth',2)

rectangle('Position',[px-mr/2,py-mr/2,mr,mr],'Curvature',1,'FaceColor',[.3 0.3 1],'EdgeColor',[1 1 1])

% set(gca,'YTick',[])
% set(gca,'XTick',[])
xlim([-5 5]);
ylim([-2 2.5]);
set(gca,'Color','k','XColor','w','YColor','w')
%set(gcf,'Position',[10 900 800 400])
%set(gcf, 'WindowState', 'maximized');
set(gcf,'Color','k')
%set(gcf,'InvertHardcopy','off')   

% box off
drawnow



outputArg1=0;
end

