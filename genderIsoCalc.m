%This function takes four inputs (Gender, Day1, Day2, Day3) and returns a
%matrix with individual mean isometric strength values across all 3 days of
%lifting for the either the female or male group. The function also returns a single mean value for each group (mean of subject means)


function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender, Day1,Day2,Day3)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here


A = [Gender == 'F']
G = (find (A == 1));
B = (find (A == 0));


Day1(G)



maleIsoIndMeans = (Day1(B) + Day2(B) + Day3(B)) / 3
femaleIsoIndMeans = (Day1(G) + Day2(G) + Day3(G)) / 3

maleGroupIsoMean = mean(maleIsoIndMeans)
femaleGroupIsoMean = mean(femaleIsoIndMeans)




if (Gender == 'F')

end

