#!/bin/bash

USER_ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USER_ID -ne 0 ]; then 
    echo "Error:: Please use the root privelege to install this files"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo -e "Installing mysql ... $R FAILURE $N"
else
    echo -e "Installing mysql ... $R SUCCESS $N"
fi

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo -e "Installing nginx ... $R FAILURE $N"
else
    echo -e "Installing nginx ... $R SUCCESS $N"
fi

dnf install python3 -y

if [ $? -ne 0 ]; then
    echo -e "Installing python3 ... $R FAILURE $N"
else
    echo -e "Installing python3 ... $R SUCCESS $N"
fi