function [youngsModulus] = youngsModulus(F,A,dL,L)
    Stress = F / A;
    Strain = dL / L;
    youngsModulus = round((Stress / Strain),2);  
end
