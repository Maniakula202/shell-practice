#!/bin/bash 


outpu=df -h | awk '{print $5}'
echo "$ouput"