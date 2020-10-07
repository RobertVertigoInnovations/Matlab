%Assignment : Assignment 7 part one
%Author : Robert J. Foster
%Date : October 12th, 2019
%Resources : Matlab for Engineers Book, www.mathworks.com/help
%Commenting Style C doxygen : http://www.doxygen.nl/manual/docblocks.html
%A program that randomizes numbers and sets them to variables A,B,C
%for B it's taking every value that's greater than 150 and setting it to
%NaN.
%for C going to set every odd number to inf. So it all isn't in one giant
%column, going to do a mod setup. Instead of the mod going to use the
%remainder (rem), once we've determined what's the even and odds. Going to
%set the odds to 'inf', once that's been accomplished, going to put the
%file back together with the evens and odds so it sustained the 1000x1000,
%with the odds first, then evens proceeding. Since there's more odds >
%evens or more evens> odds, means we can't use the append or the repmap or
%the catenation. Going to have to create own way of doing it and put them
%all together in one giant column, then use the reshape function to bring
%it back to it's 1000x1000 setup with new values of inf and orginzation
%setup. 

A = randi([100 200],1000,1000); %creating a random 1000x1000 between 100-200

%B to NaN greater than 150
B = A;
B(B>150)=NaN;

%finding the odds and evens, changing value of odds, putting everything
%back together
odds = find(rem(A,2)==1); %remainder (similar to modular) Odds, those with the remainder of 1
evens = find(rem(A,2)==0);%remainder (similar to modular) Evens, those with the remainder of 0

tempOdds = A(odds); %Putting the linear back together and matching it with it's value Odds
tempEvens = A(evens);%Putting the linear back together and matching it with it's value Even


for i = 1:numel(odds) %Making value of odds to inf, using numel to count how many numbers are in odds
    tempOdds(i)=tempOdds(i);
    tempOdds(i)=inf;
end

phC =[tempOdds;tempEvens];% attatching odds and evens together since their different values and can't be cat,repmat,append
C=reshape(phC,[1000,1000]);%reshaping array into a 1000x1000 matrix















% for j = 1:numel(b)
%     c(j) = c(j);
% end

%o = repmat(tempOdds,10,10);
% 




% a = randi([100 200],1000,1000);
% b = a;
% 
% odds = find(rem(a,2)==1);
% evens = find(rem(a,2)==0);
% 
% 
% tempOdds = a(odds);
% tempEvens = a(evens);
% 
% c = zeros(size(a));
% d = zeros(size(a));
% 
% 
% verifyEvens = numel(evens);
% verifyOdds = numel(odds);
% 
% for i = 1:numel(odds)
%     c(i) = tempOdds(i);
% 
% end
% for j =1:numel(evens)
%     d(j)= tempEvens(j);
% end
% 
% d( ~any(d,2), : ) = [];  %clears all 0's from rows
% d( :, ~any(d,1) ) = [];  %clears all 0's from columns
% 
% c( ~any(c,2), : ) = [];  %clears all 0's from rows
% c( :, ~any(c,1) ) = [];  %clears all 0's from columns
% 
% if i == verifyOdds
%     fprintf("\n%i odd numbers before\n%i odd numbers after\n\n",verifyOdds,i);
% else
%     fprintf("The number of odds to the original doesn't match");
% end
% 
% if j == verifyEvens
%     fprintf("%i even numbers before\n%i odd numbers after\n\n",verifyEvens,j);
% else
%     fprintf("The number of evens to the original doesn't match");
% end
% 
% 
% 


