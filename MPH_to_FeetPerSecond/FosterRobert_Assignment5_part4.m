%Assignment : Assignment 5 part four
%Description Creating a program that will convert miles per hour to feet
%per second
%Author : Robert J. Foster
%Date : September 27th, 2019
%Resources : Matlab for Engineers Book, www.mathworks.com/help
%Commenting Style C doxygen : http://www.doxygen.nl/manual/docblocks.html

prompt = '\nEnter in MPH what you want to be converted to Feet per second\n';
x = input(prompt);
%%according to google 1 mph = approximately 1.467 feet per second
MPHtoFPS = x * 1.467;
display(MPHtoFPS);