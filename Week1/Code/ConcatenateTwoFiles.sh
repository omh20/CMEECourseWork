#!/bin/bash
if [ "$1" = "" ]
    then 
        echo "No destination file found. syntax: ConcatenateTwoFiles.sh  <destination file> <input file> [<input file>]"
   exit    
fi
if [ "$2" = "" ]
    then 
        echo "No input file found syntax: ConcatenateTwoFiles.sh  <destination file> <input file> [<input file>]"
   exit    
fi
cat $2 > $1
if [ "$3" != "" ]
    then
        cat $3 >> $1
fi
echo "Merge file is:"
cat $1