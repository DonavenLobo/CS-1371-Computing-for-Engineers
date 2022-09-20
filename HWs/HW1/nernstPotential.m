function [nernstPotential] = nernstPotential(Z,cOut,cIn)
    nernstPotential = floor((61/Z)*(log10(cOut/cIn)));
end