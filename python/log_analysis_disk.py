error_count = 0
logfile = "logs/disk_monitor.log"

with open(logfile, "r") as file:
    for line in file:
        if "WARNING" in line:
            error_count+= 1

print(f"Disk warnings found: {error_count}")

