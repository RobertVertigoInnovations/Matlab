%Assignment : Assignment 6 part one
%Description A program that goes through 12 subplots, then determines their
%mean and posts it. 
%Author : Robert J. Foster
%Date : October 4th, 2019
%Resources : Matlab for Engineers Book, www.mathworks.com/help
%Commenting Style C doxygen : http://www.doxygen.nl/manual/docblocks.html

%loading the data, setting the data to a variable. Going through a counter
%of 12, the counter will work through the file variable, then will plot
%each one, following with a pause for cosmetic view *for the user to absorb
%the information* followed by the mean in the same style. While printing in
%the command window of what was ploted then when it's mean is ploted.
%Ending with saving the image for the ability to update the data file. 
load('Supplementary Data S1.mat');
dataSetAssignment = Data.StrideTimeIntervals_15minTrial.PD;
for counter = 01:12
a = dataSetAssignment(:,counter);
figure(1), pause(.8)
subplot (3,4,counter),plot((a),'color', 'r')
title (sprintf("PD %d",counter))
xlabel ('ISI #')
ylabel ('ISI (s)')
axis ([0,500,0.8,1.2])
fprintf("\nPD %02d done\n", counter)
hold on
pause(.5)
fprintf("Drawing %02d's mean\n",counter)
fplot(mean(a),'LineWidth', 3, 'color','g');
end
saveas(gcf, '15minTrial', 'jpg'); 
