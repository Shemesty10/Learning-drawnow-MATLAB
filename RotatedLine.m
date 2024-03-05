clc; clear all; clf;

theta1 = linspace(0,2*pi,500);
theta2 = linspace(0,2*pi,500);

x1 = 2;
y1 = 0;
x2 = 4;
y2 = 0;
dot1 = scatter(x1,y1,"filled",'r');
hold on; grid on;
dot2 = scatter(x2,y2,"filled",'b');
scatter(0,0,"filled",'k');
dotx = ([x1 x2])';
doty = ([y1 y2])';
lines = plot(dotx,doty,'r',LineWidth=1);
hold off; xlim([-4.5 4.5]); ylim([-4.5 4.5])

for inc = 1:length(theta1)
    x1rot = x1*cos(theta1(inc)) - y1*sin(theta1(inc));
    y1rot = x1*sin(theta1(inc)) + y1*cos(theta1(inc));
    x2rot = x2*cos(theta2(inc)) - y2*sin(theta2(inc));
    y2rot = x2*sin(theta2(inc)) + y2*cos(theta2(inc));
    dotx = ([x1rot x2rot]);
    doty = ([y1rot y2rot]);
    set(dot1,'XData',x1rot,'YData',y1rot);
    set(dot2,'XData',x2rot,'YData',y2rot);
    set(lines,'XData',dotx,'YData',doty);
    drawnow
end