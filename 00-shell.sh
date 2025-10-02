#!/bin/bash 


outpu=$(df -h | awk '{ $5 }')
echo "$ouput"