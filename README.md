# Automation basics

Small scripts written as self-study to learn basic automation, monitoring and logging
in Linux environments.

Scripts focus on:
- System monitoring
- Log handling
- Simple automation tasks


## Bash scripts

### monitor_disk.sh
Checks disk usage and prints a warning if usage exceeds a defined threshold.

### service_check.sh
Checks the status of a specified system service and logs whether it is running. Prints a warning in the terminal if the service is not running.

### system_status.sh
Logs CPU, memory, and disk usage of the system with timestamps. The data is written to a log file for monitoring purposes.


## Python scripts

### log_analysis.py
Simple log analysis script that parses log files and highlights relevant events for troubleshooting and monitoring.