function [blck2,blck_patch2]=fuel_block(thrtl_prcnt)
x=[0 3 3 0];
y=[0 0 1 1];
x=x.*100-4080;
y=y.*100-3400;
blck2=[x;y];
blck_patch2=patch(x,y,[1 1 1]);
end