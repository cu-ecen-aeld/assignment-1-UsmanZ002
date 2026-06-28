#!/bin/bash
if [ $# -eq 2 ]
then
        writeFile=$1; writeStr=$2
        dirPath=$(dirname "$writeFile")
        success=$(mkdir -p "$dirPath" && echo "$writeStr" > "$writeFile" | echo $?)
        if [ ! success ]
        then
                echo "Error creating file"
                exit 1
        fi
else
        echo "Incorrect Number of Arguments"
        exit 1
fi
