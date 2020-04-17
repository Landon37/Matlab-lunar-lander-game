function Lunar_Lander_orbit
clear
clc
close all
global quitGame Th thrtl_prcnt time m_crnt crnt_fuel_for_descent...
    out_of_fuel vx vy dx dy theta px py vcurx vcury lpx lpy tpx tpy...
    final_vy final_vx
vx=0;
vy=2.1;
crnt_fuel_for_descent=8212; 
out_of_fuel=false;
m_crnt=16400;
time=.05;
quitGame=0;
Th=0;
thrtl_prcnt=0; %Throttle Percent start at 0
scale=1;
vcurx=vx;
vcury=vy;
dist_last=0;
[fig]=moonOrbitView;
set(fig,'KeyPressFcn', @LunarLanderKeyDownListener);
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
lpx=px;
lpy=py;
tpx=px;
tpy=py;
n=0;
%starting distance
dist=3000;
%create vector shapes
tpro=linspace(0,2*pi,4);
tret=linspace(0,2*pi,5);
tnorm=linspace(0,2*pi,4);
tanorm=linspace(0,2*pi,5);
tarr=linspace(0,2*pi,4);
%create loop
while dist > 2200 && quitGame ~= 1
    n=n+1;
    [ax,ay]=acceleration(thrtl_prcnt); %m/s^2
    velocity(ax,ay)
    distance(ax,ay);

%calculate gravity
Fgx=((6.67*10^-11)*(7.35*10^22)*m_crnt)/((1737125.914+px)^2);
Fgy=((6.67*10^-11)*(7.35*10^22)*m_crnt)/((1737125.914+py)^2);
t=atand(abs(py/px));
dist=sqrt((px^2)+(py^2));
t=acosd(px/dist);
c=sqrt((px^2)+(py^2));

%acceleration due to gravity based on quadrent
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


    %calculate rotation
    RtnMtrx = [cos(Th) sin(Th); -sin(Th) cos(Th)];
    

    %Plot Lander
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
    
    %Vectors
    %call directions of vectors
    [xppro,yppro,xpret,ypret,xpnorm,ypnorm,xpanorm,yapnorm...
        ]=vector_directions;
    %calc location of vectors
    xpro=90.*cos(tpro)+xppro; %prograde
    ypro=90.*sin(tpro)+yppro;
    xret=90.*cos(tret)+xpret; %retrograde
    yret=90.*sin(tret)+ypret;
    xnorm=90.*cos(tnorm)+xpnorm; %normal
    ynorm=90.*sin(tnorm)+ypnorm;
    xanorm=90.*cos(tanorm)+xpanorm; %antinormal
    yanorm=90.*sin(tanorm)+yapnorm;
    %plot vectors
    pro=plot(xpro,ypro,'yellow');
    ret=plot(xret,yret,'yellow');
    norm=plot(xnorm,ynorm,'m');
    anorm=plot(xanorm,yanorm,'m');
    
    %navball
    xnav=400.*cos(tarr-Th-pi/2)-4935;
    ynav=400.*sin(tarr-Th-pi/2)-2825;
    nav=plot(xnav,ynav,'cyan');
    
    
    %Calc relative speed
    cvx=agx*1;
    cvy=agy*1;
    vcurx=((px-lpx)*16)/time;
    vcury=((py-lpy)*16)/time;
    s=sqrt(((vcurx)^2)+((vcury)^2));
    %display speed
    speed=sprintf('%.2f m/s', s);
    st=text(-6000,-2000,speed)
    
    distm=dist+12000;
    %display distance
    distancefm=sprintf('%.2f m', distm);
    dt=text(-4500,-2000,distancefm)
    lpx=px;
    lpy=py;
    if n > 4
        tpx=px;
        tpy=py;
        n=0;
    end
    anti_Normal_Velocity=(dist-dist_last)/time;
    dist_last=dist;
    
    pause(time)

    delete(st)
    delete(dt)
    delete(pro)
    delete(ret)
    delete(norm)
    delete(anorm)
    delete(nav)
end
close all
final_vy=abs(anti_Normal_Velocity*35);
final_vx=abs(s);

end