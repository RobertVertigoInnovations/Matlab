f = figure('Name','Random Numbers','NumberTitle','off');
movegui(f,'center'); 
rD = ones(10,1000); 
counter = 1; 
countLoop = 2:2:20;
rP(1) = subplot(2,1,1);
rP(2) = subplot(2,1,2);
title(rP(1), 'Random numbers')
set(rP,'Nextplot','add')
while (counter ~= 11) 
    for countLoop = 2:2:20 
        rD(counter,:) = countLoop * randn(1,1000) + 7.5 * countLoop; 
        plot(rP(1), rD(counter,:)) 
        histogram(rP(2), rD(counter,:)) 
        counter = counter + 1; 
    end 
    saveas(gcf, 'Random_Numbers', 'jpg'); % Finally saving the figure
end
