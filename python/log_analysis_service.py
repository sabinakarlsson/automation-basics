# Syfte: Analysera service_status.log och räkna antal gånger tjänster inte körts

error_count = 0
logfile = "logs/service_status.log"

with open(logfile, "r") as file:
    for line in file:
        if "NOT RUNNING" in line:
            error_count += 1

print(f"Services not running found: {error_count}")