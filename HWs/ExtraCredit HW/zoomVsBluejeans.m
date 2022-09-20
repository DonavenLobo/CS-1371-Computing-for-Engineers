function zoomVsBluejeans(filename1, filename2)
zoomFile = fileread(filename1); %Read file zoom.txt
zoom = strsplit(zoomFile,"\n"); %split file in cells by newline character
blueFile = fileread(filename2); %Read file bluejeans.txt
blue = strsplit(blueFile,"\n");%split file in cells by newline character
outputName = [filename1(1:end-4),'_',filename2(1:end-4),'_comparison.txt'];
output = fopen(outputName,'w');
count = 0;
found = 0;
for x = 1:length(zoom)
    found = 0;
    for y = 1:length(blue)
        if strcmp(zoom(x),blue(y))
            if count == 1
                fprintf(output,'File 1 has %d additional line.\n',count);
            end
            if count>1
                fprintf(output,'File 1 has %d additional lines.\n',count);
            end
            fprintf(output,'File 1 line %d matches File 2 line %d.\n',x,y);
            found = 1;
            count=0;
            break;
        end
    end
    if found==0
        count = count+1;
    end
end
if count == 1
    fprintf(output,'File 1 has %d additional line.\n',count);
end
if count>1
    fprintf(output,'File 1 has %d additional lines.\n',count);
end

count = 0;
for x = 1:length(blue)
    found = 0;
    for y = 1:length(zoom)
        if strcmp(blue(x),zoom(y))
            if count == 1
                fprintf(output,'File 2 has %d additional line.\n',count);
            end
            if count>1
                fprintf(output,'File 2 has %d additional lines.\n',count);
            end
            found = 1;
            count=0;
            break;
        end
    end
    if found==0
        count = count+1;
    end
end
if count == 1
    fprintf(output,'File 2 has %d additional line.\n',count);
end
if count>1
    fprintf(output,'File 2 has %d additional lines.\n',count);
end
fclose(output);
end
% zoom = fopen(filename1,'r');
% blue = fopen(filename2,'r');
% outputName = [filename1(1:end-4),'_',filename2(1:end-4),'_comparison.txt'];
% output = fopen(outputName,'w');
% zoomLine = fgetl(zoom);
% blueLine = fgetl(blue);
% BlineNum = 1;
% % allMatches = [];
% failCount = 0;
% while ischar(blueLine)
%     match = false;
%     ZlineNum = 1;
%     while ischar(zoomLine)
%         if strcmp(blueLine,zoomLine)
%             fprintf(output,'File 1 line %d matches File 2 line %d.',ZlineNum,BlineNum);
%             match = true;
%             ZlineNum = ZlineNum + 1;
%         else
%             ZlineNum = ZlineNum + 1;
%         end
%         zoomLine = fgetl(zoom);         
%     end
% %     allMatches = [allMatches,match];
%     if match == false
%         failCount = failCount + 1;
%     else
%         if failCount ~= 0
%             fprintf(output,'File 1 has %d additional lines.',failCount);
%         end
%         failCount = 0;
%     end
%     blueLine = fgetl(blue);
% end
% fclose(zoom);
% fclose(blue);
% fclose(output);
% end