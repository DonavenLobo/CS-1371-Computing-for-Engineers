function [selected] = cucumberCollection(collection)
len1 = length([collection.HP]); %finds the length of each field
    for a = 1:len1 % iterates through every entry in the field
        collection(a).XP = (10*collection(a).HP) + (5*(collection(a).Intelligence ...
            + collection(a).Regeneration)) + collection(a).Stealth; % Adds a new field and adds calculated value to each field entry
    end
mask1 = find([collection.XP] > 1000 | [collection.Stealth] > 70); % creates a mask based on given criteria
collection = collection(mask1); % Applies mask
collection = rmfield(collection,'Mobility'); % Removes the mobility field from the structure
[~,mask2] = sort([collection.XP],'descend');% Sorts the XP field in decending order to create a mask
selected = collection(mask2); % applies mask assigns output to output variable
end