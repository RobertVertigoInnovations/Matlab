%Assignment : Assignment 8 part one
%Author : Robert J. Foster
%Date : October 27th, 2019
%Resources : Matlab for Engineers Book, www.mathworks.com/help
%Commenting Style C doxygen : http://www.doxygen.nl/manual/docblocks.html
% A program that loads gait stats from an excel file and splits them up 
% from all the numbers, to the headers, to the raw data.
% With these numbers it determines the highest number for the left side for
% each.
%Then it determines which one has the highest gait ability.

% 1.Load in the two spreadsheets 'PD' and 'HE' from this excel file. 
% You need to upload 'everything' (i.e., numbers, headers, and raw data). 
% You will need to load the data from each spreadsheet within different files.

[PD,PDheaders,PDraw]=xlsread('DualTask_Timeseries.xlsx','PD');
[HE,HEheaders,HEraw]=xlsread('DualTask_Timeseries.xlsx','HE');

% 2. Create two new matrix 'PD_baseline_ST_left' and 'HE_baseline_ST_left' 
% that contains the first 400 data the left side of each participant from the 
% PD group and HE group, respectively. USE A 'FOR' LOOP.[20 pts]

% (HE) Confused by the question, there's 2 left per participants, this one
% commented out would be for the 2 lefts per participant
% for i=2:2:((size(HE,2)))
%     HE_baseline_ST_left(:,i)=HE(1:400,i)
% end

%(HE)This one would be for one baseline per participant depending on the name
%since baseline is in the name, I assume that it's about the baseline
for i=2:4:((size(HE,2)))
    HE_baseline_ST_left(:,i)=HE(1:400,i);
end

% (PD) Confused by the question, there's 2 left per participants, this one
% commented out would be for the 2 lefts per participant
% for i=2:2:((size(PD,2)))
%    PD_baseline_ST_left(:,i)=PD(1:400,i)
% end

%(PD)This one would be for one baseline per participant depending on the name
%since baseline is in the name, I assume that it's about the baseline
for i=2:4:((size(PD,2)))
   PD_baseline_ST_left(:,i)=PD(1:400,i);
end

% 3 . Which group presents the highest gait variability, i.e., the greater standard 
% deviation of stride intervals? 

HEconversion = nanmean(nanstd(HE_baseline_ST_left))
PDconversion = nanmean(nanstd(PD_baseline_ST_left))

if(HEconversion > PDconversion)
    disp("HE is higher")
else
    disp("PD is higher")
end

%PD is higher
