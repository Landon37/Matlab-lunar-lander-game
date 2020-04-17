%function landerView
hold on
xmax=60;
xmin=-xmax;
ymax=xmax;
ymin=xmin;
scrsize=get(0,'ScreenSize');
fig1=figure('Position', [0,0,1600,900]);
axis([xmin xmax ymin ymax])
axis equal
axis manual
axis off
hold off

t=0:.001:2*pi;

x=[1 7 7 1];
y=[1 1 8 8];
lander=[x;y];
Xs=1;
Ys=1;
lander_Patch=patch(x-4,y-24,[0.4 0.4 0.5]);
set(lander_Patch);

x=20*cos(t);
y=20.*sin(t);
lander=[x;y];
Xs=1;
Ys=1;
lander_Patch=patch(x,y,[0.9 0.9 0.8]);
set(lander_Patch);

x=[1 40 40 1];
y=[1 1 15 15];
lander=[x;y];
Xs=1;
Ys=1;
lander_Patch=patch(x-20.5,y-38,[0.8 0.7 0.2]);
set(lander_Patch);

