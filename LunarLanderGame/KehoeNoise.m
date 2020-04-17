function [kNoise]=KehoeNoise(m)
max=1000;
min=0;
rand=GetRandomNumberInRange(min,max);

variability=100;

kNoise=0:1:m;
kNoise(1)=rand;
for n=2:m
    thisNum=GetRandomNumberInRange(kNoise(n-1)-variability,kNoise(n-1)+variability);
    if thisNum > max
        thisNum = max;
    elseif thisNum < min
        thisNum = min;
    end
    kNoise(n)=thisNum;
end
end

function output=GetRandomNumberInRange(min,max)
output=randi((max-min)+1)+min;
end

