xx = 150;
yy = 100;

rot = linspace(0,2*pi,250);
scatter(xx,yy,"filled",'r');
grid on 
xlim([45 155])
ylim([45 155])
hold on
scatter(100,100,"filled",'k');
h = scatter(xx,yy,'filled','b');
hold off 
for inc = 1:length(rot)
    xrot = (xx-100)*cos(rot(inc)) - (yy-100)*sin(rot(inc)) + 100;
    yrot = (xx-100)*sin(rot(inc)) + (yy-100)*cos(rot(inc)) + 100;
    set(h,'XData',xrot,'YData',yrot);
    drawnow
end