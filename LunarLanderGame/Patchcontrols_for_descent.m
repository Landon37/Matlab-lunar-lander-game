function [thrtlb_Patch,thrtlb,fuelb_Patch,fuelb,navb1_Patch,navb1,...
    navb2_Patch,navb2]=Patchcontrols_for_descent
t=0:.4:2*pi;
%Throttle Bar
x=[0 60 60 0];
y=[0 0 460 460];
x=x.*2.5-6020;
y=y.*2.5+2250;
thrtlb=[x;y];
thrtlb_Patch=patch(x,y,'yellow','EdgeColor',[1 1 1]);



%fuel Bar
x=[0 60 60 0];
y=[0 0 460 460];
x=x.*2.5-4000;
y=y.*2.5+2250;
fuelb=[x;y];
fuelb_Patch=patch(x,y,'yellow','EdgeColor',[1 1 1]);



%Nav Ball
x11=700.*cos(t)-4935;
y11=700.*sin(t)+2825;
navb1=[x11;y11];
navb1_Patch=patch(x11,y11,[0.3 0.3 0.3],'EdgeColor',[0 0 0]);

x11=600.*cos(t)-4935;
y11=600.*sin(t)+2825;
navb2=[x11;y11];
navb2_Patch=patch(x11,y11,[0 0 0],'EdgeColor',[0 0 0]);

end