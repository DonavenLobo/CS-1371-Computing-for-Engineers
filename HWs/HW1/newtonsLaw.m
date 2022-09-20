function [acc, force] = newtonsLaw(vIn,vFin,delTime,mass)
    acc = (vFin-vIn)/delTime;
    force = round((mass*acc),2);
    acc = round(acc,2);
end