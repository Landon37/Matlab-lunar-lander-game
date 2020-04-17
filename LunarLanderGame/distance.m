function distance(ax,ay)
global vx vy time dx dy
    dx=vx*time+.5*ax*(time^2);
    dy=vy*time+.5*ay*(time^2);
end