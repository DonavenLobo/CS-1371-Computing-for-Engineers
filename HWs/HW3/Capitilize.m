function [Caps] = Capitilize(input)
    Caps = [upper(input(1)), lower(input(2:end))]; 
end