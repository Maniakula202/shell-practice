#!/bin/bash 

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

inputfile=$1


if [ ! -f $inputfile ]; then 
    echo -e "$R Source directory $inputfile does not exits $N"
else
    echo -e "$G Source directory $inputfile Existed $N"

if [ -r $inputfile ]; then
  echo "Directory is readable "
else
  echo "Directory is not readable"
fi

if [ -w $inputfile ]; then
  echo "File is writable"
else
  echo "File is not writable"
fi
