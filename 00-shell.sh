#!/bin/bash 

inputfile=$1


if [ -d $inputfile ]; then 
    echo "The given input path is directory"
    cd $inpufile
    DIR_FILES=$(ls)
    echo "$DIR_FILES"
else
    echo -e "$G Source directory $inputfile Existed $N"
fi 

