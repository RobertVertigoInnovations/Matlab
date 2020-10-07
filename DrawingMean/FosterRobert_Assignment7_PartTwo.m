%Assignment : Assignment 7 part two
%Author : Robert J. Foster
%Date : October 12th, 2019
%Resources : Matlab for Engineers Book, www.mathworks.com/help
%Commenting Style C doxygen : http://www.doxygen.nl/manual/docblocks.html
%A program that takes the data along constant means and std then plots it
%on the first gui. Once this is plotted it will then clean it up with a
%window of 5 and print it in a new gui. Adding a std of 2 above and below
%each recorded mean.
%legend({'Noise','+2 STD','Mean','-2 STD'},'AutoUpdate','off','Location','bestoutside','Position',[.0 .4 .2 .4],'color','none');





%Closing the data, loading the data to reduce on tic toc time, setting data
%to data, setting the window movement time by 5.
close all
load('E:\Winter 2019 Semester\Matlab2200\Assignment6\Supplementary Data S1.mat');
data = Data.StrideTimeIntervals_15minTrial.PD;
window=5;

%Setting up the GUI of noisy figure one and moving it to the north center. 
fOne = figure('Name','Noisy','NumberTitle','off');
movegui(fOne,'center');
movegui(fOne,'north');

%Setting up the GUI of cleaned figure two and moving it to the center
%south. 
fTwo = figure('Name','Clean','NumberTitle','off');
movegui(fTwo,'center');
movegui(fTwo,'south');

%Pausing to allow for the movements to take place before the information is
%ploted. 
pause(.2);

%Setting a counter of 12 so it will go through 12 subplots. 
for counter = 01:12
    
    dataA = data(:,counter); %Looping through each row for the 12 columns. 
    figure(1)
    subplot (3,4,counter),plot((dataA),'color', 'b') %Making the color blue for the sake of UI since the STD is now red. 
    title (sprintf("PD %d",counter))
    xlabel ('ISI #')
    ylabel ('ISI (s)')
    axis ([0,500,0.8,1.2])
    hold on
    
    %Pre allocating variables to speed up computer processing time. Tic Toc
    Me = zeros(length(dataA), 1);
    StandardD1 = zeros(length(dataA), 1);
    StandardD2 = zeros(length(dataA), 1);
    Plus2 = zeros(length(dataA), 1);
    Minus2 = zeros(length(dataA), 1);
    
    %Taking every single row data, ploting the mean, the std, and then
    %setting up the +2 and -2 std for future use. 
    for i = 2:length(dataA) - 1
        Me(i) = mean(dataA(i - 1:i + 1));
        StandardD1(i) = std(dataA(i - 1:i + 1));
        StandardD2(i) = StandardD1(i)+StandardD1(i);
        Plus2(i)=Me(i)+StandardD2(i);
        Minus2(i)=Me(i)-StandardD2(i);
    end
    
    %With the loop done, now going to plot each one. Setting the STD to 1
    %for the sake of UI. Setting it to red for the assignment.
    %Setting the color of the mean as green as previous, taking away the 3
    %size for UI and it over pollutes the information with that given size.
    
    subplot(3,4,counter),plot(Plus2, 'o','MarkerSize',1, 'MarkerEdgeColor','red','MarkerFaceColor','red');
    subplot(3,4,counter),plot(Minus2, 'o','MarkerSize',1, 'MarkerEdgeColor','red','MarkerFaceColor','red');
    subplot(3,4,counter),plot((Me),'color','g');
    
    
end
saveas(gcf, 'FosterRobert_PartTwo_Nois', 'jpg'); %Saving the data to a jpg

%Setting up to clean the previous data. 
for counter2 = 01:12
    
    dataB = data(:,counter2);
    figure(2)
    meanSpeed = movmean(dataB,window); %Creating the mean speed at which the window is moving. 
    subplot (3,4,counter2),plot((meanSpeed),'color', 'b') %Ploting the original data with a speed of 5
    title (sprintf("PD %d",counter2))
    xlabel ('ISI #')
    ylabel ('ISI (s)')
    axis ([0,500,0.8,1.2])
 
    hold on
    
    %Preallocating memory to use for the for loop. Tic Toc
    cleanedMe = zeros(length(dataB), 1);
    cleanedStandardD = zeros(length(dataB), 1);
    cleaned2StandardD = zeros(length(dataB), 1);
    cleanedPlus2 = zeros(length(dataB), 1);
    cleanedMinus2 = zeros(length(dataB), 1);
    
    %For loop, saving every mean along moving data, every std along moving
    %data, every std along moving data. Saving the +2 and -2 std for the
    %data. 
    for i = 2:length(dataB) - 1
        cleanedMe(i) = mean(dataB(i - 1:i + 1));
        cleanedStandardD(i) = std(dataB(i - 1:i + 1));
        cleaned2StandardD(i) = cleanedStandardD(i)+cleanedStandardD(i);
        cleanedPlus2(i)=cleanedMe(i)+cleaned2StandardD(i);
        cleanedMinus2(i)=cleanedMe(i)-cleaned2StandardD(i);
    end
    
    %Once it's gone through the for loop and the std +2 and -2 have been
    %applied, going to now use movmean to move the cleaned version
    %filtering it for each variable. 
    cleanedMeMove = movmean(cleanedMe,window);
    cleaned1StandardDMove = movmean(cleanedStandardD,window);
    cleaned2StandardDMove = movmean( cleaned2StandardD,window);
    cleanedPlus2Move = movmean(cleanedPlus2,window);
    cleanedMinus2Move = movmean(cleanedMinus2,window);
    
    %Taking the variables and plotting them. Since color is red for the
    %std, made the plot blue for the sake of ui, while keeping the color
    %green for the mean. Shrinking the std to 1 for the sake of visual,
    %taking away the 3 on the mean for the sake of ui and visual aesthetics
    subplot(3,4,counter2),plot(cleanedPlus2Move, 'o','MarkerSize',1, 'color','red');
    subplot(3,4,counter2),plot(cleanedMinus2Move, 'o','MarkerSize',1, 'color','red');
    subplot(3,4,counter2),plot((cleanedMeMove),'color','g');   
    
end
saveas(gcf, 'FosterRobert_PartTwo_Cleaned', 'jpg'); %Saving the data to a JPG
