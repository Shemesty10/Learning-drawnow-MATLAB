xx = 50;
yy = 0;

rot = linspace(0,2*pi,250);
scatter(xx,yy,"filled",'r');
grid on 
xlim([-55 55])
ylim([-55 55])
hold on
scatter(0,0,"filled",'k');
h = scatter(xx,yy,'filled','b');
hold off 
for inc = 1:length(rot)
    xrot = (xx)*cos(rot(inc)) - (yy)*sin(rot(inc));
    yrot = (xx)*sin(rot(inc)) + (yy)*cos(rot(inc));
    set(h,'XData',xrot,'YData',yrot);
    drawnow
end
