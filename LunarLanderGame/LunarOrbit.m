%Lunar Orbit
%%
clear
clc

FigureSetup
global lem h 
lem = imread('lunarLander.jpg');


%plotting of moon
t=0:.01:10;
moonx=1079.4.*cos(t);
moony=1079.4.*sin(t); 

initialorbit
%functions
function FigureSetup()
figure('position', [0,0,1600,900]);
plot((1:10).^2,'r')
orbitbackground = imread('orbitBackground.jpg');
imshow(orbitbackground);
end

function initialorbit
global lem h SHIP

end