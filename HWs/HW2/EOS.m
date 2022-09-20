function [maxP, log] = EOS(volume, moles, temp)
    R = 0.0821; %Defining all the constants that the formulas will need to use
    a = 0.242;
    b = 0.02651;
    IG = (moles*R*temp)/volume; %Finding value of pressure using Ideal Gas Law 
    Vm = moles/volume; %Establishing value that is called multiple times in VDWs equation
    VDW = ((R*temp)/(Vm-b))-(a/(Vm^2)); %Finding value of pressure using Van der Walls equation
    maxP = round(max(IG,VDW)); %Assigning the max P value to maxP
%     if (IG > VDW) % if statement to find identify which value was greater
%         log = true;
%     else
%         log = false;
%     end
    log = IG > VDW; %Alternate method not using an if statement
end