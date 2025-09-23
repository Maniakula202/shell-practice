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

dnf install mysql -y
validate $? "mysql"

dnf install nginx -y
validate $? "nginx"

dnf install python3 -y
validate $? "python3"