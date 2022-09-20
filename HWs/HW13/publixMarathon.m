function [completeTime] = publixMarathon(t, ca)
vel = cell2mat(ca(:,2:end)); % Gets all the velocities and converts them into doubles
findAlex = find(strcmp(ca(:,1),'Alex')); % finds which row Alex's times are on
subplot(2,2,1) % Distance vs time subplot
d1 = getDist(vel,1,t); % Gets distance for competitor number 1
d2 = getDist(vel,2,t); % Gets distance for competitor number 2
d3 = getDist(vel,3,t); % Gets distance for competitor number 3
d4 = getDist(vel,4,t); % Gets distance for competitor number 4
alexD = getDist(vel,findAlex,t); % Gets Alex's Distances
completeTime = round(interp1(alexD,t,42.195),2); % Linearly Interpolates what time Alex will complete the marathon 
hold on % Hold on so that we can make multiple plots onto the same graph
plot(t,d1,'ro-') % plots competitor 1's distance vs time graph
plot(t,d2,'go-') % plots competitor 2's distance vs time graph
plot(t,d3,'bo-') % plots competitor 3's distance vs time graph
plot(t,d4,'mo-') % plots competitor 4's distance vs time graph
plot(completeTime,42.195,'kd') % Plots Alex's completion time 
hold off
xlabel('time [hr]'); % labels x axis
ylabel('distance [km]'); % labels y axis
subplot(2,2,2)
hold on % Hold on so that we can make multiple plots onto the same graph
plot(t,vel(1,:),'rd-') % plots competitor 1's velocity vs time graph
plot(t,vel(2,:),'gd-') % plots competitor 2's velocity vs time graph
plot(t,vel(3,:),'bd-') % plots competitor 3's velocity vs time graph
plot(t,vel(4,:),'mo-') % plots competitor 4's velocity vs time graph
hold off
xlabel('time [hr]'); % labels x axis
ylabel('velocity [km/hr]') % labels y axis
subplot(2,2,3)
a1 = getAcc(vel,1,t); % Gets acceleration for competitor 1
a2 = getAcc(vel,2,t); % Gets acceleration for competitor 2
a3 = getAcc(vel,3,t); % Gets acceleration for competitor 3
a4 = getAcc(vel,4,t); % Gets acceleration for competitor 4
hold on % Hold on so that we can make multiple plots onto the same graph
plot(t(1:end-1),a1,'rs-') % plots competitor 1's acceleration vs time graph
plot(t(1:end-1),a2,'gs-') % plots competitor 2's acceleration vs time graph
plot(t(1:end-1),a3,'bs-') % plots competitor 3's acceleration vs time graph
plot(t(1:end-1),a4,'ms-') % plots competitor 4's acceleration vs time graph
hold off
xlabel('time [hr]'); % labels x axis
ylabel('acceleration [km/hr^2]') % labels y axis
subplot(2,2,4)
j1 = diff(a1)./diff(t(1:end-1));% Gets Jerk for competitor 1
j2 = diff(a2)./diff(t(1:end-1));% Gets Jerk for competitor 2
j3 = diff(a3)./diff(t(1:end-1));% Gets Jerk for competitor 3
j4 = diff(a4)./diff(t(1:end-1));% Gets Jerk for competitor 4
hold on % Hold on so that we can make multiple plots onto the same graph
plot(t(1:end-2),j1,'r*-')% plots competitor 1's jerk vs time graph
plot(t(1:end-2),j2,'g*-')% plots competitor 2's jerk vs time graph
plot(t(1:end-2),j3,'b*-')% plots competitor 3's jerk vs time graph
plot(t(1:end-2),j4,'m*-')% plots competitor 4's jerk vs time graph
hold off
xlabel('time [hr]'); % labels x axis
ylabel('jerk [km/hr^3]') % labels y axis
end


function Acc = getAcc(vel,runnerNo,time) % Helper function to get acceleration vectors
Acc = diff(vel(runnerNo,:))./diff(time); % Calculation: Differentiation
end

function dist = getDist(vel,runnerNo,time) % Helper function to get distance vectors
dist = cumtrapz(time,vel(runnerNo,:)); % Calculation: Integration
end