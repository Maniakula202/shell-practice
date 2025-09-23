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

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo -e "Installing $2 ... $R FAILURE $N"
    else
        echo -e "Installing $2 ... $R SUCCESS $N"
    fi

}

dnf list installed mysql

if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "mysql"
else
   echo -e "MySQL already exist ... $Y SKIPPING $N" 
fi

dnf list installed nginx

if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "nginx"
else
   echo -e "nginx already exist ... $Y SKIPPING $N" 
fi

dnf list installed python3

if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "python3"
else
   echo -e "python3 already exist ... $Y SKIPPING $N" 
fi
