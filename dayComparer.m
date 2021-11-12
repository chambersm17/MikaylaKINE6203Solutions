%This function takes 3 inputs (subject Id, two of the three days) and
%compares the increase in days

function [gains] = dayComparer(SubjectID,DayA,DayB)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here

isoGains = find(DayB > DayA)
gains = SubjectID(isoGains)

% if (DayB > DayA)
%     gains = SubjectID;
  



end

