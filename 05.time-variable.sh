#!/bin/bash

START_TIME=$(date +%s)

sleep 10 &

END_TIME=$(date +%s)

RUN_TIME=$((START_TIME+END_TIME))

echo "The total script time in seconds: $RUN_TIME"