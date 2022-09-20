function cowboy_Data_updated = cowboyTryouts(cowboy_Data, KeyHeader)
headers = [cowboy_Data(1,:)]
data = [cowboy_Data(2:end,:)]
hColorFind = strcmp(headers,'Horse Color')
GrayMask = strcmpi(data(:,hColorFind),'Gray')
data = data(~GrayMask,:)
LTimeFind = strcmp(headers, 'Lasso Time')
DTimeFind = strcmp(headers, 'Draw Time')
LassoTime = cell2mat([data(:,LTimeFind)])
DrawTime = cell2mat([data(:,DTimeFind)])
Stats = num2cell(round((LassoTime ./ DrawTime),2))
headers = [headers, {'Stats'}]
data = [data, Stats]
KeyHFind = strcmpi(headers,KeyHeader)
[~,KeySort] = sort([data{:,KeyHFind}])
data = data(KeySort,:)
headers = headers(:,~KeyHFind)
data = data(:,~KeyHFind)
cowboy_Data_updated = [headers; data]
end