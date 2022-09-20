function [passed, numPass] = olympicTryouts(id, runTimes, highJump, discus, longJump)
speedMask = (runTimes<=13); %Logical mask for people who meet the speed criteria
jumpMask = (highJump|longJump>6); %Logical mask for people who meet the jumping criteria
throwMask = (discus>=60); %Logical mask for people who meet throwing criteria
pass = speedMask & jumpMask & throwMask; %Logical mask that combines all the criteria together
passed = id(pass); % Mask applied to ids and stored in variable 'passed'
numPass = length(passed); % length of vector passed, stored in numPass
end