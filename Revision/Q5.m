function cowStruct = Q5(cows)
headers = cows(1,:)
rest = cows(2:end, :)'
[rows,cols] = size(rest)
for a = 1:rows
    for b = 1:cols
    	cowStruct(b).(headers{a}) = rest{a,b}
    end
end
end