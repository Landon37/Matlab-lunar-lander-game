function [fig1]=lunarsurface;

xmax=3700;
xmin=-xmax;
ymax=xmax;
ymin=xmin;
scrsize=get(0,'ScreenSize');
fig1=figure('Position', [0,0,1600,900]);
axis([xmin xmax ymin ymax])
axis equal
axis manual
axis off

whitebg([0 0 0]);
t=0:.1:2*pi;

x1=200050000.*cos(t)-50;
y1=200050000.*sin(t)+110;
moon1=[x1;y1];
moon1_Patch=patch(x1,y1,[0 0 0]);
set(moon1_Patch);


hold on
end

    








    
    
    
    
    
    
    
    
    
    