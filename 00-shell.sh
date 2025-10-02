#!/bin/bash 


output=$(df -h | awk '{print $5}')
echo "$output"