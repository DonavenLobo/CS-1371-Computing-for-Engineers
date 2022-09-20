function [Temp] = arrhenius(k,k0,Ea)
    Temp = round((-Ea/(8.314*log(k/k0))),2);
end