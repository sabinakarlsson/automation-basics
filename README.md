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

### log_analysis_disk.py
Reads the disk monitoring log and counts the number of warnings. Each line containing "WARNING" is counted, providing a quick summary of potential disk issues.

### log_analysis_service.py
Reads the service status log (`logs/service_status.log`) and counts the number of times services were not running ("NOT RUNNING"). Provides a quick summary of service uptime and issues.

### log_analysis_system.py
Reads the system status log and counts the total number of entries. Currently, it only counts lines and does not detect warnings or errors.