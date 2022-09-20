function [Fg] = calcGravity(mass1, mass2, distance)
G = 6.67e-11; % Gravitational constant
Fg = [0,0,0]; % Creates an empty vector of length 3
    for a = 1:length(mass1) % For loop that iterates 3 loops
       Fg(a) = round((G.*mass1(a)*mass2(a))./((distance(a))^2),4); %Assigns a rounded value of force in position 'a' of the vector
    end
end