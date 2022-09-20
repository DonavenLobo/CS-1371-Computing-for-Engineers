function [fixedText] = corruptedMessage(corr, ref)
corrPos = find(corr == '?'); %Positions of all the corrupted parts of the message
corr(corrPos) = ref(corrPos); % Replace corrupted charecters with the refrence letters to create true message
fixedText = corr; % Assign corrected sentence to output variable
end