%moon orbit view
function [fig1]=moonOrbitView

% hold on
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
t=0:.001:2*pi;

x1=200050.*cos(t)-50;
y1=200050.*sin(t)+110;
moon1=[x1;y1];
moon1_Patch=patch(x1,y1,[0 0 0]);
set(moon1_Patch);

x=2158.8*cos(t);
y=2158.8.*sin(t);
moon=[x;y];
Xs=1;
Ys=1;
moon_Patch=patch(x,y,[0.325 0.404 0.424]);
set(moon_Patch);

x1=2050.*cos(t)-50;
y1=2050.*sin(t)+110;
moon1=[x1;y1];
moon1_Patch=patch(x1,y1,[.647 .714 .729],'EdgeColor',[.647 .714 .729]);
set(moon1_Patch);

x2=1870.*cos(t)-90;
y2=1870.*sin(t)+220;
moon1=[x2;y2];
moon1_Patch=patch(x2,y2,[0.7176 0.7686 0.7843],'EdgeColor',[.647 .714 .729]);
set(moon1_Patch);

x3=1570.*cos(t)-170;
y3=1570.*sin(t)+420;
moon1=[x3;y3];
moon1_Patch=patch(x3,y3,[0.8 0.87 0.87],'EdgeColor',[0.8 0.87 0.87]);
set(moon1_Patch);

x4=670.*cos(t)+80;
y4=670.*sin(t)+620;
moon1=[x4;y4];
moon1_Patch=patch(x4,y4,[0.7176 0.7686 0.7843],'EdgeColor',[.647 .714 .729]);
set(moon1_Patch);

x6=250.*cos(t)-1650;
y6=250.*sin(t)+620;
moon1=[x6;y6];
moon1_Patch=patch(x6,y6,[0.8 0.87 0.87],'EdgeColor',[0.8 0.87 0.87]);
set(moon1_Patch);

x5=200.*cos(t)-1650;
y5=200.*sin(t)+620;
moon1=[x5;y5];
moon1_Patch=patch(x5,y5,[0.7176 0.7686 0.7843],'EdgeColor',[.647 .714 .729]);
set(moon1_Patch);

x7=150.*cos(t)-850;
y7=150.*sin(t)+1760;
moon1=[x7;y7];
moon1_Patch=patch(x7,y7,[0.8 0.87 0.87],'EdgeColor',[0.8 0.87 0.87]);
set(moon1_Patch);

x8=190.*cos(t)+1100;
y8=190.*sin(t)+1360;
moon1=[x8;y8];
moon1_Patch=patch(x8,y8,[0.8 0.87 0.87],'EdgeColor',[0.8 0.87 0.87]);
set(moon1_Patch);

x9=380.*cos(t)+1260;
y9=380.*sin(t)+560;
moon1=[x9;y9];
moon1_Patch=patch(x9,y9,[0.8 0.87 0.87],'EdgeColor',[0.8 0.87 0.87]);
set(moon1_Patch);

x10=330.*cos(t)+1260;
y10=330.*sin(t)+560;
moon1=[x10;y10];
moon1_Patch=patch(x10,y10,[0.7176 0.7686 0.7843],'EdgeColor',[.647 .714 .729]);
set(moon1_Patch);

x11=100.*cos(t)+830;
y11=100.*sin(t)+820;
moon1=[x11;y11];
moon1_Patch=patch(x11,y11,[0.7176 0.7686 0.7843],'EdgeColor',[.647 .714 .729]);
set(moon1_Patch);

x11=250.*cos(t)+830;
y11=250.*sin(t)-740;
moon1=[x11;y11];
moon1_Patch=patch(x11,y11,[0.8 0.87 0.87],'EdgeColor',[0.8 0.87 0.87]);
set(moon1_Patch);

x11=200.*cos(t)+830;
y11=200.*sin(t)-740;
moon1=[x11;y11];
moon1_Patch=patch(x11,y11,[0.7176 0.7686 0.7843],'EdgeColor',[.647 .714 .729]);
set(moon1_Patch);

x11=650.*cos(t)-330;
y11=550.*sin(t)-860;
moon1=[x11;y11];
moon1_Patch=patch(x11,y11,[0.8 0.87 0.87],'EdgeColor',[0.8 0.87 0.87]);
set(moon1_Patch);

x11=200.*cos(t)+260;
y11=200.*sin(t)-360;
moon1=[x11;y11];
moon1_Patch=patch(x11,y11,[0.7176 0.7686 0.7843],'EdgeColor',[.647 .714 .729]);
set(moon1_Patch);

x11=520.*cos(t)-430;
y11=500.*sin(t)-860;
moon1=[x11;y11];
moon1_Patch=patch(x11,y11,[0.7176 0.7686 0.7843],'EdgeColor',[.647 .714 .729]);
set(moon1_Patch);

x11=180.*cos(t)-1650;
y11=180.*sin(t)-360;
moon1=[x11;y11];
moon1_Patch=patch(x11,y11,[0.8 0.87 0.87],'EdgeColor',[0.8 0.87 0.87]);
set(moon1_Patch);

x11=140.*cos(t)-1650;
y11=140.*sin(t)-360;
moon1=[x11;y11];
moon1_Patch=patch(x11,y11,[0.7176 0.7686 0.7843],'EdgeColor',[.647 .714 .729]);
set(moon1_Patch);


%Throttle Bar
x=[0 60 60 0];
y=[0 0 460 460];
x=x.*2.5-6020;
y=y.*2.5-3400;
moon=[x;y];
moon1_Patch=patch(x,y,'yellow','EdgeColor',[1 1 1]);
set(moon1_Patch);


%fuel Bar
x=[0 60 60 0];
y=[0 0 460 460];
x=x.*2.5-4000;
y=y.*2.5-3400;
moon=[x;y];
moon1_Patch=patch(x,y,'yellow','EdgeColor',[1 1 1]);
set(moon1_Patch);


%Nav Ball
x11=700.*cos(t)-4935;
y11=700.*sin(t)-2825;
moon1=[x11;y11];
moon1_Patch=patch(x11,y11,[0.3 0.3 0.3],'EdgeColor',[0 0 0]);
set(moon1_Patch);
x11=600.*cos(t)-4935;
y11=600.*sin(t)-2825;
moon1=[x11;y11];
moon1_Patch=patch(x11,y11,[0 0 0],'EdgeColor',[0 0 0]);
set(moon1_Patch);
hold on
end





