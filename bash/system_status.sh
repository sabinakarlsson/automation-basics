# Syfte: Logga CPU-, minnes- och diskanvändning för systemstatus

#!/bin/bash

LOGFILE="logs/system_status.log"

DATE=$(date "+%Y-%m-%d %H:%M")
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')
MEM=$(free -m | awk 'NR==2{printf "%.2f", $3*100/$2 }')
DISK=$(df -h / | awk 'NR==2{print $5}')

echo "$DATE CPU:$CPU% MEM:$MEM% DISK:$DISK" >> "$LOGFILE"