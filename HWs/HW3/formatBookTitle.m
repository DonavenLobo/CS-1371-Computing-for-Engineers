function [formatted] = formatBookTitle(unformatted)
unformatted = lower(unformatted); % Makes the full string lowercase
unformatted(1) = upper(unformatted(1)); % Makes the first charector of the string uppercase
Spaces = strfind(unformatted,' '); % Vector that stores all the index locations of the ' ' strings
Ands = strfind(unformatted,'and');% Vector that stores all the index locations of the 'and' strings
Thes = strfind(unformatted,'the');% Vector that stores all the index locations of the 'the' strings
Ofs = strfind(unformatted,'of');% Vector that stores all the index locations of the 'of' strings
unformatted(Spaces+1) = upper(unformatted(Spaces+1)); % Capitilizes the charector after a space
unformatted(Ands) = lower(unformatted(Ands)); % Lower case all the ands
unformatted(Thes) = lower(unformatted(Thes)); % Lower case all the Thes
unformatted(Ofs) = lower(unformatted(Ofs)); % Lower case all the Ofs
formatted = unformatted; % Store final sentence in output variable
end
%     for a = 1:length(Spaces)
%         unformatted(Spaces(a)+1) = upper(unformatted(Spaces(a)+1)); % For loop that goes to the index position after the space and replaces it with the capitilized letter
%     end
%     for a = 1:length(Ands)
%         unformatted(Ands(a)) = lower(unformatted(Ands(a))); % 
%     end
%     for a = 1:length(Thes)
%         unformatted(Thes(a)) = lower(unformatted(Thes(a)));
%     end
%     for a = 1:length(Ofs)
%         unformatted(Ofs(a)) = lower(unformatted(Ofs(a)));
%     end
% Split = strsplit(unformatted);
% formatted = blanks(length(Split));
% formatted = char();
% NonCapWords = ['and','the','of'];
%     for a = 1:length(Split)
%         Word = char(Split(a));
%         if a == 1
%             Word = cap(Word) ;
%         elseif ismember(Word,NonCapWords) == 1
%             Word = lower(Word);
%         else
%             Word = cap(Word);
%         end
%         formatted(a) = char(Word); 
%     end
% formatted = strjoin(formatted);
% end
% 
% function [Uppercase] = cap(Anyword)
% for a = 1:length(Anyword)
%     if a ==1
%         Anyword(a) = upper(Anyword(a));
%     else
%         Anyword(a) = lower(Anyword(a));
%     end
% end
% Uppercase = Anyword;
% Uppercase = lower(Anyword);
% Uppercase(1) = upper(Uppercase(1));

% Uppercase = [upper(Anyword(1)), lower(Anyword(2:end))];

% str= Anyword;
%     for i=1:length(str);
%         if str(1,i(1));
%             str= upper(str);
%         else str(1,i); 
%             str= lower(str);
%         end
%     end
% Uppercase = lower(Anyword);
%     for i = 1:length(Uppercase)
%         if Uppercase(1,i(i))
%             Uppercase = Upper(Uppercase);
%         end
%     end