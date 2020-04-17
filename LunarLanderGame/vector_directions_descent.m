function [xp,yp,xr,yr,xn,yn,xan,yan]=vector_directions_descent
global px py time tpx tpy

vcx=((px-tpx))/time;
vcy=((py-tpy))/time;
theta=atan(vcx/vcy);
% if py > 0
xp=-650.*cos(.5+theta+pi/2)-4935;
yp=-650.*sin(.5+theta+pi/2)-2825;

xr=650.*cos(.5+theta+pi/2)-4935;
yr=650.*sin(.5+theta+pi/2)-2825;

xn=650.*cos(theta)-4935;
yn=650.*sin(theta)-2825;

xan=-650.*cos(theta)-4935;
yan=-650.*sin(theta)-2825;
% else
% xp=650.*cos(theta)-4935;
% yp=650.*sin(theta)-2825;
% xr=-650.*cos(theta)-4935;
% yr=-650.*sin(theta)-2825;
% xn=-650.*cos(theta+pi/2)-4935;
% yn=-650.*sin(theta+pi/2)-2825;
% xan=650.*cos(theta+pi/2)-4935;
% yan=650.*sin(theta+pi/2)-2825;
% end


end