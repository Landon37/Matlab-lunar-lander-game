function [ax,ay]=acceleration(thrtl_prcnt)
global Th
% max_thrust=45040; %Newtons
max_thrust=1000;
[m]=mass; %kg
if thrtl_prcnt < 0
    thrtl_prcnt=0;
end
thrtl_prcnt=thrtl_prcnt/100;
%Force Vector
Fx=(max_thrust*thrtl_prcnt)*sin(Th+pi);
Fy=(max_thrust*thrtl_prcnt)*cos(Th+pi);

ax=(Fx)/m;
ay=(Fy)/m;

end