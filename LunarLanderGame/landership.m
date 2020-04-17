

function [lander,lander1,lander_Patch1,lander3,...
    lander_Patch2,lander4,lander_Patch3,lander5,lander_Patch4,lander6,...
    lander_Patch5,lander7,lander_Patch6,lander8,lander_Patch7,lander9,...
    lander_Patch8,lander10,lander_Patch9,lander11,lander_Patch10,...
    lander12,lander_Patch11,lander13,lander_Patch12,lander14,...
    lander_Patch13,lander15,lander_Patch14,lander16,lander_Patch15,...
    lander17,lander_Patch16,lander18,lander_Patch17,lander19,...
    lander_Patch18,lander20,lander_Patch19,lander21,lander_Patch20,...
    lander22,lander_Patch21]=landership(px,py,scale)

RtnMtrx = 1;


midx=196.5;
nmidx=midx*2;

%Background
x=[7 7 388 388];
y=[399 0 0 399];
lander=[x;y];
%lander_Patch=patch(x,y,[0 0 0]);
%set(lander_Patch);
lander=scale.*lander;
lander2=RtnMtrx*lander;
%set(lander_Patch,'XData',lander2(1,:)+px,'YData',lander2(2,:)+py)

%Leg Base left
x=[13 8 8 13 44 49 49 43];
y=[398 393 390 385 385 390 393 398];
x1=x-196.5;
y1=y-199.5;
lander1=[x1;y1];
lander_Patch1=patch(x1+px,y1+py,[0.7 0.6 0.1]);

lander1=scale.*lander1;
lander2=RtnMtrx*lander;



%Leg Base Right
for n=1:length(x)
    x(n)=nmidx-x(n);
end
x=x-196.5;
y=y-199.5;
lander3=[x;y];
lander_Patch2=patch(x,y,[0.7 0.6 0.1]);

lander3=scale.*lander3;
lander2=RtnMtrx*lander;


%Leg left
x=[35 54 116 116 85 116 116 71 22];
y=[385 345 340 320 292 283 270 285 385];
x1=x-196.5;
y1=y-199.5;
lander4=[x1;y1];
lander_Patch3=patch(x1,y1,[0.3 0.3 0.3]);

lander4=scale.*lander4;
lander2=RtnMtrx*lander;


%Leg Right
for n=1:length(x)
    x(n)=nmidx-x(n);
end
x=x-196.5;
y=y-199.5;
lander5=[x;y];
lander_Patch4=patch(x,y,[0.3 0.3 0.3]);

lander5=scale.*lander5;
lander2=RtnMtrx*lander;


%Leg Left Cutout
x=[60 105 76];
y=[332 328 301];
x1=x-196.5;
y1=y-199.5;
lander6=[x1;y1];
lander_Patch5=patch(x1,y1,[0 0 0]);

lander6=scale.*lander6;
lander2=RtnMtrx*lander;


%Leg Right Cutout
for n=1:length(x)
    x(n)=nmidx-x(n);
end
x=x-196.5;
y=y-199.5;
lander7=[x;y];
lander_Patch6=patch(x,y,[0 0 0]);

lander7=scale.*lander7;
lander2=RtnMtrx*lander;


%Thruster Base
x=[132 132 142 252 262 262];
y=[340 349 359 359 349 340];
x=x-196.5;
y=y-199.5;
lander8=[x;y];
lander_Patch7=patch(x,y,[0.7 0.6 0.1]);

lander8=scale.*lander8;
lander2=RtnMtrx*lander;


%Middle Connector
x=[185 185 209 209];
y=[264 255 255 264];
x=x-196.5;
y=y-199.5;
lander9=[x;y];
lander_Patch8=patch(x,y,[0.6 0.5 0.1]);

lander9=scale.*lander9;
lander2=RtnMtrx*lander;


%Left Connector
x=[144 144 155 155];
y=[264 249 249 264];
x1=x-196.5;
y1=y-199.5;
lander10=[x1;y1];
lander_Patch9=patch(x1,y1,[0.35 0.35 0.35]);

lander10=scale.*lander10;
lander2=RtnMtrx*lander;


%Right Connector
for n=1:length(x)
    x(n)=nmidx-x(n);
end
x=x-196.5;
y=y-199.5;
lander11=[x;y];
lander_Patch10=patch(x,y,[0.35 0.35 0.35]);

lander11=scale.*lander11;
lander2=RtnMtrx*lander;


%Dish Arm
x=[186 132 126 121 120 132 132 136 192];
y=[156 142 138 130 120 120 126 130 144];
x=x-196.5;
y=y-199.5;
lander12=[x;y];
lander_Patch11=patch(x,y,[0.3 0.3 0.3]);

lander12=scale.*lander12;
lander2=RtnMtrx*lander;


%Dish
t=0:.5:2*pi;
x=23*cos(t)+126;
y=25.*sin(t)+96;
x=x-196.5;
y=y-199.5;
lander13=[x;y];
Xs=1;
Ys=1;
lander_Patch12=patch(x,y,[0.5 0.5 0.5],'EdgeColor',[.5 .5 .5]);

lander13=scale.*lander13;
lander2=RtnMtrx*lander;


%Dish Box
x=[102 102 150 150];
y=[93 63 63 93];
x=x-196.5;
y=y-199.5;
lander14=[x;y];
lander_Patch13=patch(x,y,[0 0 0]);

lander14=scale.*lander14;
lander2=RtnMtrx*lander;


%Ball Connector
x=[191 191 203 203];
y=[136 118 118 136];
x=x-196.5;
y=y-199.5;
lander15=[x;y];
lander_Patch14=patch(x,y,[0.3 0.3 0.3]);

lander15=scale.*lander15;
lander2=RtnMtrx*lander;


%Ball
t=0:.5:2*pi;
x=17*cos(t)+197;
y=19*sin(t)+102;
x=x-196.5;
y=y-199.5;
lander16=[x;y];
Xs=1;
Ys=1;
lander_Patch15=patch(x,y,[0.5 0.5 0.5],'EdgeColor',[.5 .5 .5]);

lander16=scale.*lander16;
lander2=RtnMtrx*lander;


%Middle Center
x=[137 132 132 136 148 247 283 291 291 287];
y=[250 245 208 197 181 191 205 215 246 250];
x=x-196.5;
y=y-199.5;
lander17=[x;y];
lander_Patch16=patch(x,y,[0.8 0.7 0.2]);

lander17=scale.*lander17;
lander2=RtnMtrx*lander;


%Middle Circle
t=0:.5:2*pi;
x=53*cos(t)+197;
y=53.*sin(t)+199;
x=x-196.5;
y=y-199.5;
lander18=[x;y];
Xs=1;
Ys=1;
lander_Patch17=patch(x,y,[0.7 0.6 0.1],'EdgeColor',[0.7 0.6 0.1]);

lander18=scale.*lander18;
lander2=RtnMtrx*lander;


%Middle Top
x=[178 174 179 183 189 205 211 214 220 216];
y=[256 253 144 138 135 135 138 144 253 256];
x=x-196.5;
y=y-199.5;
lander19=[x;y];
lander_Patch18=patch(x,y,[0.8 0.7 0.2]);

lander19=scale.*lander19;
lander2=RtnMtrx*lander;


%Base Box
x=[117 114 114 124 270 280 280 277];
y=[340 337 270 263 263 270 337 340];
x=x-196.5;
y=y-199.5;
lander20=[x;y];
lander_Patch19=patch(x,y,[0.8 0.7 0.2]);

lander20=scale.*lander20;
lander2=RtnMtrx*lander;


%Middle Leg
x=[197 192 192 202 202];
y=[265 268 386 386 268];
x=x-196.5;
y=y-199.5;
lander21=[x;y];
lander_Patch20=patch(x,y,[0.3 0.3 0.3]);

lander21=scale.*lander21;
lander2=RtnMtrx*lander;


%Middle Leg Base
x=[178 174 174 178 216 220 220 216];
y=[385 389 394 398 398 394 389 385];
x=x-196.5;
y=y-199.5;
lander22=[x;y];
lander_Patch21=patch(x,y,[0.7 0.6 0.1]);

lander22=scale.*lander22;
lander2=RtnMtrx*lander;


end

