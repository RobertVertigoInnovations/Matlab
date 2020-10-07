%Assignment : Assignment 5 part one - three
%Description A program that will go through questiosn one to through with
%1. being a prompt window. 2) being a for loop displaying the original
%value in column one then the valued multiplied itself in column 2. 3)
%being a while loop that will cycle through 1-5 on numbers that will square
%themselves
%Author : Robert J. Foster
%Date : September 27th, 2019
%Resources : Matlab for Engineers Book, www.mathworks.com/help
%Commenting Style C doxygen : http://www.doxygen.nl/manual/docblocks.html

%Question #1
prompt = '\nEnter the temperature in terms of farienheight \nto determine what you should wear.\n';
x = input(prompt);
if (x >= 80)
    fprintf("\nWith the temperature of %i, you should wear shorts.\n\n",x)
elseif (x >= 60 && x <= 80)
    fprintf("\nWith the temperature of %i, you should bring some sunglasses.\n\n",x)
elseif (x<= 60)
    fprintf("\nWith the temperature of %i, you should wear a jacket.\n\n",x)
end

% Question #2

for counter = (-25:25)'
    temp = counter .* counter;
end


%Question #3
w = (1:5)';
while (w < 6)
    w = w .* w;
end
        
    
    
    