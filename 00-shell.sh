#!/bin/bash 


output=$(df -h | awk '{print $5}' | cut -d "%" -f1)
echo "$output"