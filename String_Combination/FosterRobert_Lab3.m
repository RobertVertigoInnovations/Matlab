%Assignment : Assignment 3 part one
%Description A program that works with strings, then it combines them
%to come up with the ending sentence, working with punctuation along
%s the way
%Author : Robert J. Foster
%Date : September 16th, 2019
%Resources : Matlab for Engineers Book, www.mathworks.com/help
%Commenting Style C doxygen : http://www.doxygen.nl/manual/docblocks.html

%Question Number One 
harder = "harder";
life = "better";
faster = "faster";
stronger= "stronger";

%Question Number Two
fprintf("Matlab makes my life %s.\n",harder);
fprintf("Matlab makes my life %s.\n",life);
fprintf("Matlab makes my life %s.\n",faster);
fprintf("Matlab makes my life %s.\n",stronger);
combination = harder + ", " +life + ", " + faster + ", " + stronger;
fprintf("Matlab makes my life %s.\n",combination);

%Question Number Three

%c for characters, best way to convert numbers 
%/ strings to the ASCII format 1 – 127
%1.	! " # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : 
%; < = > ?
%2.	@ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 
%[ \ ] ^ _' a b c d e f g h i j k l m n o p q r s t u v w x y z { | } ~

%d for decimals, as integers work with whole numbers and will always 
%round down, you can use %d to indicate that you want to instantiate decimals 
%f will be to used to indicate that you want to do a floating point. So 
%instead of taking up as much space until it reaches the datatypes maximum space. 
%You can indicate how many numbers before or after the decimal you want to 
%use by %f then . with a number before or after to indicate how many numbers.
