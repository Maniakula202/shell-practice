#!/bin/bash 


output=$(df -h | awk '{print $5}' | cut "%" -f1)
echo "$output"