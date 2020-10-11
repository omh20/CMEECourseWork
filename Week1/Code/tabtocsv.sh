#!/bin/bash

# Show the use of variables
MyVar='some string'
echo 'the current value of the variable is' $MyVar
echo 'Please enter a new string'
read MyVar
echo 'the current value of the variable is' $MyVar

##Reading multiple values
echo 'Enter two numbers seperated by space(s)'
read a b 
echo 'you entered' $a 'and' $b ''. Their sum is:'
mysum='expr $a + $b'
echo $mysum#!/bin/bash
# Author: Olivia o.haas20@imperial.ac.uk
 #Script: tbtocsv.sh
# Description: substitute the tabs in the files with commas
#
#Saves the output into a .csv file
# Arguments: 1 --> tab delimited file 
# Date: Oct 2020

if [ "$1" = "" ]
    then 
        echo "No input file found"
   exit    
fi

echo "Creating a comma delimited version of $1 ..."
#echo cat $1 
cat $1 | tr -s "$2" "$3" > $1.csv
#cat $1.csv
echo "Done!"
exit