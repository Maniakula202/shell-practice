#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log" # /var/log/shell-script/16-logs.log

mkdir -p $LOGS_FOLDER
echo "Script started executed at: $(date)" | tee -a $LOG_FILE


SOURCE_DIR=/home/ec2-user/app-logs

if [ ! -d $SOURCE_DIR ]; then
    echo "ERROR:: Source directory $SOURCE_DIR not present" | tee -a $LOG_FILE
    exit 1
fi 

FILES_TO_DELETE=$(find $SOURCE_DIR -name "*.log" -mtime +14) &>>$LOG_FILE

#for filepath in $FILES_TO_DELETE
#do
#    echo "Deleting the file path: $filepath"
#done

while IFS= read -r filepath
do
    echo "Deleting the file: $filepath"
    rm -rf $filepath &>>$LOG_FILE
    echo "Deleted the file: $filepath"
done <<< $FILES_TO_DELETE