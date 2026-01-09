# Syfte: Läs disk-monitor-loggen och räkna antalet varningar ("WARNING").

error_count = 0
logfile = "logs/monitor_disk.log"

with open(logfile, "r") as file:
    for line in file:
        if "WARNING" in line:
            error_count+= 1

print(f"Disk warnings found: {error_count}")

