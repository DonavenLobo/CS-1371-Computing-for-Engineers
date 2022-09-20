function [decrypted] = loveLetter(encrypted, pairs)
letters = pairs(1:2:end); % Stores all the decryption letters in the vector letters
numbers = pairs(2:2:end); % Stores all the decryption numbers in the vector numbers
    for a = 1:length(letters) % iteterates the number of times according to the length of letters( or numbers)
        letter = letters(a); % Stores a given decryption letter
        number = numbers(a); % Stores a given decryption number
        encrypted(encrypted == number) = letter; % Replaces all the instances of a given decryption number with its according decrption letter       
    end
decrypted = encrypted; % Stores final output
end