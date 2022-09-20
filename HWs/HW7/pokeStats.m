function [stats] = pokeStats(missingStats, replacementStats)
locationMask = find(missingStats == -1); % find the linear indexes of the missing stats
missingStats(locationMask) = replacementStats(locationMask); % Replace the missing stats with repective backup 
stats = missingStats; % Assign output to corrected missingStats variable
end