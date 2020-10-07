%Assignment : Assignment 5 part four
%Description Creating a program that will convert f to celsius and kelvin
%Author : Robert J. Foster
%Date : September 27th, 2019
%Resources : Matlab for Engineers Book, www.mathworks.com/help
%Commenting Style C doxygen : http://www.doxygen.nl/manual/docblocks.html

prompt = '\nEnter in degrees in accordance to Fahrenheit that you would like converted\n';
x = input(prompt);

%%fahrenheit to kevlin = t(k)=(t(f)+459.67)x5/9
kelvin = (x+459.67) * (5/9);
%fahrenheit to celsius = (t(f)-32)x5/9
celsius = (x-32) * (5/9);

fprintf("Converting %i Farenheit \n%i f = %.2f celsius\n%i f = %.2f kelvin\n",x,x,kelvin,x,celsius);
