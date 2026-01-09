#!/bin/bash

THRESHOLD=80
LOGFILE="logs/disk_monitor.log"

df -h | grep '^/dev/' | while read fs size used avail percent mount; do
    usage=${percent%\%}

    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
    
    if [ "$usage" -ge "$THRESHOLD" ]; then
    echo "$TIMESTAMP WARNING: $fs on $mount is at ${usage}% usage"
    echo "$TIMESTAMP WARNING: $fs on $mount is at ${usage}% usage" >> "$LOGFILE"
    else
    echo "$TIMESTAMP $fs on $mount is at ${usage}% usage"
    echo "$TIMESTAMP $fs on $mount is at ${usage}% usage" >> "$LOGFILE"
    fi

done