function [y_outlier, y_no_outlier] = surveyProcessing(x, y, N)
[sorty,~] = sort(y); % Sort the y values in ascending order
Q1 = median(sorty(1:(end/2))); % finds the lower quartile
Q3 = median(sorty(end/2+1:end)); % finds the upper quartile
IQR = abs(Q3 - Q1); % finds the inter quartile range
lowOut = Q1 - 1.5*IQR; % finds the low cap value
bigOut = Q3 + 1.5*IQR; % finds the high cap value
findOut = y<lowOut | y>bigOut; % creates a mask
yvals = y(~findOut); % removes outliers
xvals = x(~findOut); % removes outliers
eqOut1 = polyfit(x,y,N); % gets equation of graph with outliers
y_outlier = polyval(eqOut1,x); % plots outlier graph
eqOut2 = polyfit(xvals,yvals,N); % gets equation of graph without outliers
y_no_outlier = polyval(eqOut2,x); % plots outlier-free graph
end

% Storex = x;
% % % x
% % % y
% % 
% % Storex = x;
% % % [x,inds] = sort(x,'a');
% % % y = y(inds);
% % % mod(length(y),2);
% % if mod(length(y),2) == 0
% %     Q1 = median(y(1:(end/2-1)));
% %     Q3 = median(y(end/2:end));
% %     IQR = abs(Q3 - Q1);
% %     lowOut = Q1 - 1.5*IQR;
% %     bigOut = Q3 + 1.5*IQR;
% %     mask1 = y(1:(end/2-1)) < lowOut;
% %     mask2 = y(end/2:end) > bigOut;
% %     bottomY = y(1:(end/2-1));
% %     topY = y(end/2:end);
% %     bottomY(mask1) = []
% %     topY(mask2) = []
% % else
% %     Q1 = median(y(1:floor(end/2)));
% %     Q3 = median(y(ceil(end/2):end));
% %     IQR = abs(Q3 - Q1);
% %     lowOut = Q1 - 1.5*IQR;
% %     bigOut = Q3 + 1.5*IQR;
% %     mask1 = y(1:floor(end/2)) < lowOut;
% %     mask2 = y(ceil(end/2):end) > bigOut;
% %     bottomY = y(1:floor(end/2));
% %     topY = y(ceil(end/2):end);
% %     bottomY(mask1) = []
% %     topY(mask2) = []
% % end
% % y = [bottomY,topY];
% IQR = abs(Q3 - Q1);
% lowOut = Q1 - 1.5*IQR;
% bigOut = Q3 + 1.5*IQR;

% findlowOut = false;
% findbigOut = false;
% BottomOutliers = [];
% TopOutliers = [];
% x
% y
%     while findlowOut == false
%         if y(1) < lowOut
% %             BottomOutliers = [BottomOutliers, y(1)];
%             y(1) = [];
%             x(1) = [];
%         else
%             findlowOut = true;
%         end
%     end
%     while findbigOut == false
%         if y(end) > bigOut
% %             TopOutliers = [TopOutliers, y(1)];
%             y(end) = [];
%             x(end) = [];
%         else
%             findbigOut = true;
%         end
%     end
%     x(mask1 & mask2) = [];
%     BottomOutliers
%     TopOutliers
% x(findOut) = [];
% y(findOut) = [];
