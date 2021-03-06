% 
[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv'); %this calls the Iso Kinetic file from the folder
%calls the function 
[maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender, Day1, Day2, Day3);

day1toDay2 = dayComparer(SubjectID, Day1, Day2); %this function compares day1 with day2 to determine if there was an increase from day1 to day2
day2toDay3 = dayComparer(SubjectID, Day2, Day3); %this function compares day2 with day3 to determine if there was an increase from day2 to day3

normDay1mean = Day1 ./ Weight %this gives the mean of normalized isokinetic strength for each subject for day1
normDay2mean = Day2 ./ Weight %this gives the mean of normalized isokinetic strength for each subject for day2
normDay3mean = Day3 ./ Weight %this gives the mean of normalized isokinetic strength for each subject for day3
normDay1mean = mean(normDay1mean); %this gives the mean of normalized isokinetic strength for day1
normDay1mean = mean(normDay2mean); %this gives the mean of normalized isokinetic strength for day2 
normDay1mean = mean(normDay3mean); %this gives the mean of normalized isokinetic strength for day3 


day1toDay2(25,1)=1 %this is to make the vector 25x1 so that it can be put in table 
day2toDay3(25,1)=1 %this is to make the vector 25x1 so that it can be put in table 
maleIsoIndMeans(25,1)=1 %this is to make the vector 25x1 so that it can be put in table 
femaleIsoIndMeans(25,1)=1 %this is to make the vector 25x1 so that it can be put in table 
femaleGroupIsoMean(25,1)=1 %this is to make the vector 25x1 so that it can be put in table 
maleGroupIsoMean(25,1)=1 %this is to make the vector 25x1 so that it can be put in table 
normDay1mean(25,1)=1 %this is to make the vector 25x1 so that it can be put in table 
normDay2mean(25,1)=1 %this is to make the vector 25x1 so that it can be put in table 
normDay3mean(25,1)=1 %this is to make the vector 25x1 so that it can be put in table 


%this creates a varaible for all calculated values to put them in a table
allResults = table(maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean,day1toDay2,day2toDay3,normDay1mean,normDay2mean,normDay3mean);
%this creates a table for results of everything in the file 
writetable(allResults,'iso_results.csv');



% filename = 'iso_results.csv';
% writetable(allResults, filename);

