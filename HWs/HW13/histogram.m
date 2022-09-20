function histogram(data)
txtfile = fopen(data); % Open text file to extract data
line = fgetl(txtfile); % Gets the data line
values = []; % initializes vector
    while ~isempty(line)
        [num,line] = strtok(line, ','); % removes all numbers
        values = [values,str2num(num)]; % stores them into a double vector
    end
fclose(txtfile);% Closes text file
arr = []; % initializes data- frequency array
minValue = min(values); % stores min value
    while ~isempty(values) % continues until there are no more values in the values vector
        currVal = minValue; % assigns current value
        mask = values == currVal; % finds frequency of current value
        count = sum(mask); % finds total
        values(mask) = []; % removes those data points out of the vector
        arr = [arr;currVal,count]; % assigns it to the array
        minValue = minValue + 1; % iterates up through the minValue
    end
maxFreq = max(arr(:,2))+1; % Calcs for final axis dimensions
minNum = min(arr(:,1))-1; % Calcs for final axis dimensions
maxNum = max(arr(:,1))+1; % Calcs for final axis dimensions
len = length(arr(:,1)); % finds the length of the column so we can start drawing the histograms
hold on % Turns hold on so that we can plot onto the same graph
for a = 1:4:len % increments of 4
%     bar(arr(a,1),arr(a,2),0.9,'FaceColor',[1,1,1],'EdgeColor','r')
    yvalsR = [0,arr(a,2)]; % gets xvals 
    xvalsR = [arr(a,1)-0.45,arr(a,1)+0.45]; % gets yvals
    plot([xvalsR(1),xvalsR(2)],[yvalsR(1),yvalsR(1)],'-r') % plots horizontal line at y = 0
    plot([xvalsR(1),xvalsR(2)],[yvalsR(2),yvalsR(2)],'-r') % plots horizontal line at y = frequency
    plot([xvalsR(1),xvalsR(1)],[yvalsR(1),yvalsR(2)],'-r') % plots vertical line at x = lower bound
    plot([xvalsR(2),xvalsR(2)],[yvalsR(1),yvalsR(2)],'-r') % plots vertical line at x = upper bound
    
end
for a = 2:4:len % increments of 4
%     bar(arr(a,1),arr(a,2),0.9,'FaceColor',[1,1,1],'EdgeColor','g')
    yvalsG = [0,arr(a,2)]; % gets xvals
    xvalsG = [arr(a,1)-0.45,arr(a,1)+0.45]; % gets yvals
    plot([xvalsG(1),xvalsG(2)],[yvalsG(1),yvalsG(1)],'-g') % plots horizontal line at y = 0
    plot([xvalsG(1),xvalsG(2)],[yvalsG(2),yvalsG(2)],'-g') % plots horizontal line at y = frequency
    plot([xvalsG(1),xvalsG(1)],[yvalsG(1),yvalsG(2)],'-g') % plots vertical line at x = lower bound
    plot([xvalsG(2),xvalsG(2)],[yvalsG(1),yvalsG(2)],'-g') % plots vertical line at x = upper bound
end
for a = 3:4:len % increments of 4
%     bar(arr(a,1),arr(a,2),0.9,'FaceColor',[1,1,1],'EdgeColor','b')
    yvalsB = [0,arr(a,2)]; % gets xvals
    xvalsB = [arr(a,1)-0.45,arr(a,1)+0.45]; % gets yvals
    plot([xvalsB(1),xvalsB(2)],[yvalsB(1),yvalsB(1)],'-b') % plots horizontal line at y = 0
    plot([xvalsB(1),xvalsB(2)],[yvalsB(2),yvalsB(2)],'-b') % plots horizontal line at y = frequency
    plot([xvalsB(1),xvalsB(1)],[yvalsB(1),yvalsB(2)],'-b') % plots vertical line at x = lower bound
    plot([xvalsB(2),xvalsB(2)],[yvalsB(1),yvalsB(2)],'-b') % plots vertical line at x = upper bound
end
for a = 4:4:len % increments of 4
%     bar(arr(a,1),arr(a,2),0.9,'FaceColor',[1,1,1],'EdgeColor','k')
    yvalsK = [0,arr(a,2)]; % gets xvals
    xvalsK = [arr(a,1)-0.45,arr(a,1)+0.45]; % gets yvals
    plot([xvalsK(1),xvalsK(2)],[yvalsK(1),yvalsK(1)],'-k') % plots horizontal line at y = 0
    plot([xvalsK(1),xvalsK(2)],[yvalsK(2),yvalsK(2)],'-k') % plots horizontal line at y = frequency
    plot([xvalsK(1),xvalsK(1)],[yvalsK(1),yvalsK(2)],'-k') % plots vertical line at x = lower bound
    plot([xvalsK(2),xvalsK(2)],[yvalsK(1),yvalsK(2)],'-k') % plots vertical line at x = upper bound
end
hold off % turns hold off
axis([minNum,maxNum,0,maxFreq]) % sets dimensions of the axis
xlabel('number') % labels x- axis
ylabel('frequency') % labels y - axis
end



% [~,aMask] = sort(arr(:,1),'a');
% arr = arr(aMask,:)
%     lol = [xvalsR(1),xvalsR(2)]
%     wut = [yvalsR(1),yvalsR(1)]
