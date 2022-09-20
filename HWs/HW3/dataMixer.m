function [data] = dataMixer(vec1, vec2)
    [OrdVec1,OrgIndex] = sort(vec1); %OrdVec1 holds new ascending order, OrgIndex holds the values original index
%     OrdVec2 = zeros(1,length(vec2)); 
    data = zeros(1,(2*length(vec2))); %Creates a vector of predetermined size to save memory space and runtime
    OrdVec2 = vec2(OrgIndex); %Sorts vec2 according to original indexing and stores it into OrdVec2
    data(1:2:end) = OrdVec1; %All Odd indexes store OrdVec1
    data(2:2:end) = OrdVec2;%All Even indexes store OrdVec2
end
%     for a = 1:length(vec1)
%         OrdVec2(a) = vec2(OrgIndex(a));    
%     end
%     for a = 1:length(vec1)
%         OrdVec2(a) = vec2(strfind(vec1,OrdVec1(a)))    
%     end
%     for a = 1:length(vec2)
%         data((2*a)-1) = OrdVec1(a);
%         data(2*a) = OrdVec2(a);
%     end
