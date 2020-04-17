clear
clc

moonOrbitView
scale=2;
[lander,lander1,lander_Patch1,lander3,lander_Patch2,...
    lander4,lander_Patch3,lander5,lander_Patch4,lander6,lander_Patch5,...
    lander7,lander_Patch6,lander8,lander_Patch7,lander9,lander_Patch8,...
    lander10,lander_Patch9,lander11,lander_Patch10,lander12,...
    lander_Patch11,lander13,lander_Patch12,lander14,lander_Patch13,...
    lander15,lander_Patch14,lander16,lander_Patch15,lander17,...
    lander_Patch16,lander18,lander_Patch17,lander19,lander_Patch18,...
    lander20,lander_Patch19,lander21,lander_Patch20,lander22,...
    lander_Patch21]=landership(1,1,scale);

for theta=0:.01:2*pi
r_orbit=2500;
px=r_orbit*cos(theta);
py=r_orbit*sin(theta);

k=patch(px,py,'b');
set(k,'xdata',px,'YData',py)
end
x=1;
thet=1;

for theta=0:.01:100
    pause(.000001)
    px=r_orbit*cos(theta)+196.5;
    py=r_orbit*sin(theta)-199.5;
    

    RtnMtrx = [cos(-theta) sin(-theta); -sin(-theta) cos(-theta)];
    
    
    px=px-196.5;
    py=py+199.5;
    
    lander2=RtnMtrx*lander1;
    set(lander_Patch1,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander3;
    set(lander_Patch2,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander4;
    set(lander_Patch3,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander5;
    set(lander_Patch4,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander6;
    set(lander_Patch5,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander7;
    set(lander_Patch6,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander8;
    set(lander_Patch7,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander9;
    set(lander_Patch8,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander10;
    set(lander_Patch9,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander11;
    set(lander_Patch10,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander12;
    set(lander_Patch11,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander13;
    set(lander_Patch12,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander14;
    set(lander_Patch13,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander15;
    set(lander_Patch14,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander16;
    set(lander_Patch15,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander17;
    set(lander_Patch16,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander18;
    set(lander_Patch17,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander19;
    set(lander_Patch18,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander20;
    set(lander_Patch19,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander21;
    set(lander_Patch20,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander22;
    set(lander_Patch21,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
     
   
    value=0;
    
end
%%
clear
clc
close all
scale=2;
moonOrbitView
[lander,lander1,lander_Patch1,lander3,lander_Patch2,...
    lander4,lander_Patch3,lander5,lander_Patch4,lander6,lander_Patch5,...
    lander7,lander_Patch6,lander8,lander_Patch7,lander9,lander_Patch8,...
    lander10,lander_Patch9,lander11,lander_Patch10,lander12,...
    lander_Patch11,lander13,lander_Patch12,lander14,lander_Patch13,...
    lander15,lander_Patch14,lander16,lander_Patch15,lander17,...
    lander_Patch16,lander18,lander_Patch17,lander19,lander_Patch18,...
    lander20,lander_Patch19,lander21,lander_Patch20,lander22,...
    lander_Patch21]=landership(1,1,scale);


value=30;
Xs=1;
Ys=1;
theta=1;
while value > 20
    k = waitforbuttonpress;
% 28 leftarrow
% 29 rightarrow
% 30 uparrow
% 31 downarrow
    value = double(get(gcf,'CurrentCharacter'));
    if value == 28
        
        Xs=Xs-0;
        theta=theta+.05;
    elseif value == 29
        Xs=Xs+0;
        theta=theta-.05;
    elseif value == 30
        theta=theta;
        Ys=Ys-sin(theta+pi/2)*100;
        Xs=Xs-cos(theta+pi/2)*100;
        
%     elseif value == 31
%         Ys=Ys-6;
%       
%         theta=theta;
    
    end
px=Xs;
py=Ys;
RtnMtrx = [cos(-theta) sin(-theta); -sin(-theta) cos(-theta)];

%     px=px-196.5;
%     py=py+199.5;

    lander2=RtnMtrx*lander1;
    set(lander_Patch1,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander3;
    set(lander_Patch2,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander4;
    set(lander_Patch3,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander5;
    set(lander_Patch4,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander6;
    set(lander_Patch5,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander7;
    set(lander_Patch6,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander8;
    set(lander_Patch7,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander9;
    set(lander_Patch8,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander10;
    set(lander_Patch9,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander11;
    set(lander_Patch10,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander12;
    set(lander_Patch11,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander13;
    set(lander_Patch12,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander14;
    set(lander_Patch13,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander15;
    set(lander_Patch14,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander16;
    set(lander_Patch15,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander17;
    set(lander_Patch16,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander18;
    set(lander_Patch17,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander19;
    set(lander_Patch18,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander20;
    set(lander_Patch19,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander21;
    set(lander_Patch20,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander22;
    set(lander_Patch21,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
end

%% New Inputs

clear
clc
close all
global quitGame Th thrtl_prcnt time m_crnt crnt_fuel_for_descent...
    out_of_fuel vx vy dx dy theta px py
vx=0;
vy=2.1;
crnt_fuel_for_descent=8212; 
out_of_fuel=false;
m_crnt=16400;
time=.02;
quitGame=0;
Th=0;
thrtl_prcnt=0; %Throttle Percent start at 0
scale=1;

[fig]=moonOrbitView;
set(fig,'KeyPressFcn', @KeyDownListener);
[lander,lander1,lander_Patch1,lander3,lander_Patch2,...
    lander4,lander_Patch3,lander5,lander_Patch4,lander6,lander_Patch5,...
    lander7,lander_Patch6,lander8,lander_Patch7,lander9,lander_Patch8,...
    lander10,lander_Patch9,lander11,lander_Patch10,lander12,...
    lander_Patch11,lander13,lander_Patch12,lander14,lander_Patch13,...
    lander15,lander_Patch14,lander16,lander_Patch15,lander17,...
    lander_Patch16,lander18,lander_Patch17,lander19,lander_Patch18,...
    lander20,lander_Patch19,lander21,lander_Patch20,lander22,...
    lander_Patch21]=landership(1,1,scale);
r_orbit=3500;
theta=0;

[blck,blck_patch]=thrtl_block;
[blck2,blck_patch2]=fuel_block(thrtl_prcnt);

t_orbit=0:.1:2*pi;
vxg=0;
vyg=0;
px=3000;
py=0;
n=0;
dist=3000;
while dist > 2200 && quitGame ~= 1
    n=n+1;
    [ax,ay]=acceleration(thrtl_prcnt); %m/s^2
    velocity(ax,ay)
    distance(ax,ay);


Fgx=((6.67*10^-11)*(7.35*10^22)*m_crnt)/((1737125.914+px)^2);
Fgy=((6.67*10^-11)*(7.35*10^22)*m_crnt)/((1737125.914+py)^2);
t=atand(abs(py/px));
dist=sqrt((px^2)+(py^2));
t=acosd(px/dist);
c=sqrt((px^2)+(py^2));

if px >= 0 && py >= 0 %quadrent 1
    agx=1.6*cosd(t);
    agy=1.6*sind(t+180);
    vxg=vxg+agx*time;
    vyg=vyg+agy*time;
    dxg=vxg*time+.5*agx*time^2;
    dyg=vyg*time+.5*agy*time^2;
    
    py=py+(dy*100)+dyg*10;
    px=px+(dx*100)-dxg*10;
    
elseif px < 0 && py > 0 %quadrent 2
    t=t+pi/2;
    agx=1.6*cosd(t);
    agy=1.6*sind(-t);
    vxg=vxg+agx*time;
    vyg=vyg+agy*time;
    dxg=abs(vxg*time+.5*agx*time^2);
    dyg=abs(vyg*time+.5*agy*time^2);
    
    px=px+(dx*100)-dxg*10;
    py=py+(dy*100)-dyg*10;
elseif px < 0 && py <= 0 %quadrent 3
    t=t+pi/2;
    agx=1.6*cosd(-t);
    agy=1.6*sind(t);
    vxg=vxg+agx*time;
    vyg=vyg+agy*time;
    dxg=vxg*time+.5*agx*time^2;
    dyg=vyg*time+.5*agy*time^2;
    
    px=px+(dx*100)-dxg*10;
    py=py+(dy*100)+dyg*10;
elseif px > 0 && py <= 0 %quadrent 4
    t=t+pi/2;
    agx=1.6*cosd(-t);
    agy=1.6*sind(t);
    vxg=vxg+agx*time;
    vyg=vyg+agy*time;
    dxg=vxg*time+.5*agx*time^2;
    dyg=vyg*time+.5*agy*time^2;
    
    px=px+(dx*100)-dxg*10;
    py=py+(dy*100)+dyg*10;
    

end

        o=plot(pxo,pyo,'.b')

    RtnMtrx = [cos(Th) sin(Th); -sin(Th) cos(Th)];
    

    
    lander2=RtnMtrx*lander1;
    set(lander_Patch1,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander3;
    set(lander_Patch2,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander4;
    set(lander_Patch3,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander5;
    set(lander_Patch4,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander6;
    set(lander_Patch5,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander7;
    set(lander_Patch6,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander8;
    set(lander_Patch7,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander9;
    set(lander_Patch8,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander10;
    set(lander_Patch9,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander11;
    set(lander_Patch10,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander12;
    set(lander_Patch11,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander13;
    set(lander_Patch12,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander14;
    set(lander_Patch13,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander15;
    set(lander_Patch14,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander16;
    set(lander_Patch15,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander17;
    set(lander_Patch16,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
   
    lander2=RtnMtrx*lander18;
    set(lander_Patch17,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander19;
    set(lander_Patch18,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander20;
    set(lander_Patch19,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander21;
    set(lander_Patch20,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
    
    lander2=RtnMtrx*lander22;
    set(lander_Patch21,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)
     
    set(blck_patch,'XData',blck(1,:),'YData',blck(2,:)+(thrtl_prcnt*10.5))
    set(blck_patch2,'XData',blck2(1,:),'YData',blck2(2,:)+(crnt_fuel_for_descent*.1278617))
    
    dist=sqrt((px^2)+(py^2));
    theta=theta+.0008;

    pause(time)
    delete(o)
end
close all

function KeyDownListener(src,event)
global Th quitGame thrtl_prcnt
    val = event.Key;
    switch val
     case 'escape'
        quitGame = 1;
     case 'leftarrow' %Rotate left
        if Th <= 2*pi
            Th = Th+.1;
        else
            Th = 0;
        end
     case 'rightarrow' %Rotate right
        if Th >= -2*pi
         Th = Th-.1;
        else
            Th = 0;
        end
     case 'shift' %Throttle up
         if thrtl_prcnt <= 100
            thrtl_prcnt=thrtl_prcnt+1.5;
         else 
             thrtl_prcnt=100;
         end
     case 'control' %Throttle Down
         if thrtl_prcnt >= 0
            thrtl_prcnt=thrtl_prcnt-1.5;
         else
             thrtl_prcnt=0;
         end
     case 'x' %Throttle off
         thrtl_prcnt=0;
     case 'z' %Throttle max
          thrtl_prcnt=100;  
            
     otherwise
          val
   end
end
   

