function solved = luigisMansion(maze)
    %getting the size of the maze
    [r, c] = size(maze);
    
    x = 1; %the column we're in (x value)
    y = 1; %the row we're in (y-value)
    %'map' is an array the same size as the maze. THIS VARIABLE KEEPS TRACK
    %OF WHETHER OR NOT WE'VE BEEN AT AN INDEX PREVIOUSLY. It is essential
    %to this problem. It is a logical array (either 1's or 0's). Initially,
    %because we haven't been to any index, we set all of the enrties of map
    %to 0.
    map = zeros(r, c);
    
    route = {}; %a cell array that keeps track of 
    solved = []; %our output vector of directions
    %Well don't 'route' and 'solved' do the same thing? NO. If we get
    %stuck, we can backtrack and we can easily get rid of the last
    %direction with a cell array by deleting its last element. We could do
    %this with only one variable, 'solved', but because the words up,
    %down, left, right don't have the same number of letters in them, we'd
    %have to check which direction we have and then get rid of that many
    %characters. Introducing another variable 'route' lets us simply delete
    %the last index so that we don't have to worry about how many letters
    %long the direction is. Once we've found the exit, we will dump the
    %contents of 'route' into solved.
    
    previousN = []; %Keeps track of the directions
    nIsFive = false; %hehe we'll get to this variable later
    
    map(1, 1) = 1; %we are about to enter the first index so we mark it
    lost = true; %loop variable
    while lost
        for n = 1:5
            %we need the following if block if we reach the "otherwise"
            %block of the switch statement below. This is because once when
            %n is reset in the "otherwise" block and passes the if
            %statement on line 89 (this line might be changed if more 
            %comments/lines are added later, n is reset in the "for" loop 
            %on line 33. This is no bueno. We just reset n and the "for" 
            %loop literally just undid what we did. So, we must undo what ]
            %the "for" loop undid. In other words, just do what we wanted 
            %to do in the first place: make 'n' the previous direction.
            if nIsFive
               n = previousN(end); %setting n to the last direction
               previousN(end) = []; %getting rid of the last direction
               nIsFive = false; 
            end
            %You may wonder: "but won't we just go back to the place we're
            %in since n is the same value." An important question, with a
            %simple answer: No. This is because we've marked the index that
            %we got stuck in 'map', so we'll just skip over that index when
            %going through the possible "walls" and "doors" if block.
            
            switch n %getting the direction
                case 1
                    dir = 'up';
                case 2
                    dir = 'down';
                case 3
                    dir = 'left';
                case 4
                    dir = 'right';
                otherwise %if we get here, then we're stuck, meaning that we've checked
                    %all directions and either 1.) all directions point to
                    %a wall or 2.) we have gone down a path that only
                    %points us to an index that we've reached before. So,
                    %we must backtrack. This isn't easy because we're going
                    %against our 'map' variable. Because we kept track of
                    %the previous directions in the vector 'previousN', we
                    %simply call the last direction (which is located in
                    %the last index of 'previousN' and set that equal to n
                    route(end) = [];
                    n = previousN(end);
                    switch n %getting the previous direction
                        case 1
                            dir = 'up';
                        case 2
                            dir = 'down';
                        case 3
                            dir = 'left';
                        case 4
                            dir = 'right';
                    end
                    goBack(dir); %going backwards
                    nIsFive = true; %n = 5
            end
            
           
            if (~nIsFive && isequal(maze(y, x).(dir), 'door'))
                update(dir);
                if (~map(y, x)) %if we haven't been to this index yet
                    route = [route [dir ' ']]; %saving the direction we're going in
                    map(y, x) = 1; %updating the map
                    previousN = [previousN n]; %saving this direction.
                    break; %the break statements in this code take us out of the FOR loop, not the while loop. In other words, it resets the loop varable 'n'
                else %we've found a door but we've already been to this index
                    goBack(dir);
                end
            elseif (~nIsFive && isequal(maze(y, x).(dir), 'exit')) %We've found the exit!
                lost = false;
                for u = 1:length(route) %dumping the contents of route into the output variable, 'solved'
                    solved = [solved route{u}];
                end
                solved = [solved dir];
                break; 
            end %no case for 'wall'
        end
    end

    function update(direction)
        switch direction
            case 'up'
                y = y - 1;
            case 'down'
                y = y + 1;
            case 'left'
                x = x - 1;
            case 'right'
                x = x + 1;
        end
    end
    
    function goBack(direction)
        switch direction
            case 'down'
                y = y - 1;
            case 'up'
                y = y + 1;
            case 'right'
                x = x - 1;
            case 'left'
                x = x + 1;
        end
    end
end

% function [route] = luigisMansion(maze)
% Posx = 1;
% Posy = 1;
% exit = false;
% PrevPos = {};
% directions = {up,down,left,right};
% path = '';
%     while exit == false
%          doorVec = findDoors(Posx,Posy,maze)
%          if sum(doorVec) == 1
%              currDirection = directions{doorVec};
%              PrevPos = {}
%              path = [path currDirection];
%          else
%              
%          end
%              
%          
%     end
% 
% 
% end
% 
% function [doorVec] = findDoors(x,y,maze)
% up = strcmp(maze(x,y).up,'door');
% down = strcmp(maze(x,y).down,'door');
% left = strcmp(maze(x,y).left,'door');
% right = strcmp(maze(x,y).right,'door');
% doorVec = [up,down,left,right];
% end