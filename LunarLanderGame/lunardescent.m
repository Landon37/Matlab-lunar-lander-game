function lunardescent
clear
clc
global quitGame Th thrtl_prcnt time m_crnt crnt_fuel_for_descent...
    out_of_fuel vx vy dx dy theta px py vcurx vcury lpx lpy tpx tpy...
    final_vx final_vy
quitGame=false;
crnt_fuel_for_descent=8212; 
m_crnt=16400;
time=.05;
quitGame=0;
Th=0;
vx=-final_vx/4;
vy=-final_vy/20;
thrtl_prcnt=0; %Throttle Percent start at 0
scale=2;
vcurx=vx;
vcury=vy;
[fig]=lunarsurface;
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
z=0;
p=0;
w=1;
xmax=3700;
xmin=-xmax;
ymax=xmax;
ymin=xmin;
ax=0;
ay=0;
%create vector shapes
tpro=linspace(0,2*pi,4);
tret=linspace(0,2*pi,5);
tnorm=linspace(0,2*pi,4);
tanorm=linspace(0,2*pi,5);
tarr=linspace(0,2*pi,4);

[thrtlb_Patch,thrtlb,fuelb_Patch,fuelb,navb1_Patch,navb1,...
    navb2_Patch,navb2]=Patchcontrols_for_descent;
[blck,blck_patch]=thrtl_block;
[blck2,blck_patch2]=fuel_block(thrtl_prcnt);

%
lunar_terrain
%
q=0;
start_h=3000;
px=+4000;
py=start_h+1000;
while quitGame ~= true

    [ax,ay]=descent_acceleration(thrtl_prcnt);
    velocity(ax,ay)
    distance(ax,ay)
    if py >= 1110
        z=z-dy;
    end
    p=p-dx;
    px=px+dx;
    py=py+dy;
    
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
    
%Set throttle and fuel and nav ball
    
    
    axis([(xmin-3000)-p (xmax+3000)-p (ymin+start_h)-z (ymax+start_h)-z])
    axis manual
    set(thrtlb_Patch,'XData',thrtlb(1,:)-p,'YData',thrtlb(2,:)-z+start_h)
    set(fuelb_Patch,'XData',fuelb(1,:)-p,'YData',fuelb(2,:)-z+start_h)
    set(navb1_Patch,'XData',navb1(1,:)-p,'YData',navb1(2,:)-z+start_h)
    set(navb2_Patch,'XData',navb2(1,:)-p,'YData',navb2(2,:)-z+start_h)
    
    set(blck_patch,'XData',blck(1,:)-p,'YData',blck(2,:)+(thrtl_prcnt*10.5)+5650-z+start_h)
    set(blck_patch2,'XData',blck2(1,:)-p,'YData',blck2(2,:)+(crnt_fuel_for_descent*.1278617)+5650-z+start_h)
    
    %Calc relative speed
    vcurx=((px-lpx))/time;
    vcury=((py-lpy))/time;
    s=sqrt(((vcurx)^2)+((vcury)^2));

    %display x velocity
    speed=sprintf('%.2f m/s x', -vcurx);
    st=text(-6050-p,-2000-z+start_h+5550,speed)
    
    %Vectors
    %call directions of vectors
    [xppro,yppro,xpret,ypret,xpnorm,ypnorm,xpanorm,yapnorm...
        ]=vector_directions_descent;
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
    pro=plot(xpro-p,ypro-z+start_h+5650,'yellow');
    ret=plot(xret-p,yret-z+start_h+5650,'yellow');
    norm=plot(xnorm-p,ynorm-z+start_h+5650,'m');
    anorm=plot(xanorm-p,yanorm-z+start_h+5650,'m');
    
    %navball
    xnav=400.*cos(tarr-Th-pi/2)-4935;
    ynav=400.*sin(tarr-Th-pi/2)-2825;
    nav=plot(xnav-p,ynav-z+start_h+5650,'cyan');
    %display distance
    distm=py+2600;
    distancefm=sprintf('%.2f m surface', distm);
    dt=text(-5200-p,-3600-z+start_h+5550,distancefm)

    %Display y velocity
    velocityy=sprintf('%.2f m/s y',-vcury);
    vty=text(-4500-p,-2000-z+start_h+5550,velocityy)   
    
    lpx=px;
    lpy=py;
    pause(time)
    
    delete(st)
    delete(pro)
    delete(ret)
    delete(norm)
    delete(anorm)
    delete(nav)
    delete(dt)
    delete(vty)
    
end
% close all
end
