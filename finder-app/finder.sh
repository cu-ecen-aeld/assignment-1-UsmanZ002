#!/bin/bash
if  [ $# -eq 2 ]
then
        filesdir=$1; searchstr=$2
        if [ ! -d "$filesdir" ];
        then
                echo "${filesdir} is NOT a Directory!"
        else
                numLines=$(grep -r "$searchstr" "$filesdir" | wc -l)
                numFiles=$(grep -rl "$searchstr" "$filesdir" | wc -l)
                echo "The number of files are ${numFiles} and the number of matching lines are ${numLines}"
        fi
else
        echo "Incorrect no. of Arguments"
        exit 1
fi
