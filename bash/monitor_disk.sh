#!/bin/bash

THRESHOLD=80

df -h | grep '^/dev/' | while read fs size used avail percent mount; do
    usage=${percent%\%}
    
    if [ "$usage" -ge "$THRESHOLD" ]; then
    echo "WARNING: $fs on $mount is at ${usage}% usage"
    fi

done