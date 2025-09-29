#!/bin/bash

SOURCE_DIR=/home/ec2-user/app-logs

if [ ! -d SOURCE_DIR ]; then
    echo "ERROR:: Source directory $SOURCE_DIR not present"
fi 

LOG_FILES=$(find $SOURCE_DIR -name "*.log" -mtime +14)
echo "$LOG_FILES"