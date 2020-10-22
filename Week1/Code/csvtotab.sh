#!/bin/bash
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

echo "Creating a space delimited version of $1 ..."
echo cat $1 
cat $1 | tr -s "$2" "$3" > $1.txt
cat $1.tsv
echo "Done!"
exit
