#!/bin/bash

SOURCE_DIR=/home/ec2-user/app-logs

if [ ! -d $SOURCE_DIR ]; then
    echo "ERROR:: Source directory $SOURCE_DIR not present"
    exit 1
fi 

FILES_TO_DELETE=$(find $SOURCE_DIR -name "*.log" -mtime +14)

for filepath in $FILES_TO_DELETE
do
    echo "Deleting the file path: $filepath"
done
