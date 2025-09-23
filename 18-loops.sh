#!/bin/bash

USER_ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log" # /var/log/shell-script/16-logs.log

mkdir -p $LOGS_FOLDER
echo "Script started executed at: $(date)" | tee -a $LOG_FILE


if [ $USER_ID -ne 0 ]; then 
    echo "Error:: Please use the root privelege to install this files" | tee -a $LOG_FILE
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo -e "Installing $2 ... $R FAILURE $N" | tee -a $LOG_FILE
    else
        echo -e "Installing $2 ... $R SUCCESS $N" | tee -a $LOG_FILE
    fi

}


for package in $a
do 
    dnf list installed $package &>> $LOG_FILE

    if [ $? -ne 0 ]; then
        dnf install $package -y &>> $LOG_FILE
        VALIDATE $? "$package"
    else
    echo -e "$package already exist ... $Y SKIPPING $N" | tee -a $LOG_FILE
    fi

done

