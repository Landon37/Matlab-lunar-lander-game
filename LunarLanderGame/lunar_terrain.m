function lunar_terrain
m=500;
xm=25000;
xmi=-500000;
x=linspace(xmi,xm,2000);

x(1)=xmi;
k=2;


[y]=KehoeNoise(length(x));
y=(y)-3000;



i=length(x);
x(i+1)=xm;
y(i+1)=y(i);
x(i+2)=xm;
y(i+2)=-3700;
x(i+3)=xmi;
y(i+3)=-3700;
x(i+4)=xmi;
y(i+4)=y(1);

moon2=[x;y];
moon2_Patch=patch(x,y,[1 1 1]);
set(moon2_Patch);
end
