function noisyData(data, r)
t = data(1,:); % Gets time stamps from data table
noiseData = data(2,:); % gets noisy data from data table
add = noiseData(1); % adds the first value from noisy data to output plot data
for a = 2:length(noiseData)
      add(a) = add(end).*r + noiseData(a).*(1-r); % creates all the other output plot data points
end
hold on % Turns hold on so that we can make two plots on the same graph
plot(t,noiseData,'r-.') % plots noisy data
plot(t,add,'b-') % plots corrected data
hold off % turns hold off
axis tight % sets the axis to tight for formatting
end