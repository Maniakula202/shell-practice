#!/bin/bash

SOURCE_DIR=/home/ec2-user/app-logs

if [ ! -d $SOURCE_DIR ]; then
    echo -e "ERROR:: $SOURCE_DIR does not exist"
    exit 1
fi

LOG_FILES=$(find $SOURCE_DIR -name "*.log" -mtime +14)
echo "$LOG_FILES"
