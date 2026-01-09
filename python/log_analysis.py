error_count = 0

with open("system_status.log", "r") as file:
    for line in file:
        if "ERROR" in line:
            error_count+= 1

print(f"Errors found: {error_count}")