function [blck,blck_patch]=thrtl_block(thrtl_prcnt)
x=[0 3 3 0];
y=[0 0 1 1];
x=x.*100-6100;
y=y.*100-3400;
blck=[x;y];
blck_patch=patch(x,y,[1 1 1]);
end
