function [structData] = frankenCumber(cellData)
    for i = 1:length(cellData) % iterates through all the cells
      charac = cellData{i}; % holds the cell cointaining charectoristic and value
      structData.(charac{1})=charac{2}; % insters the new field name and stores the value into the structure
    end
end