logfile = "logs/system_status.log"
# I nuläget räknar vi bara rader, inga varningar
total_lines = 0

with open(logfile, "r") as file:
    for line in file:
        total_lines += 1

print(f"System status entries: {total_lines}")