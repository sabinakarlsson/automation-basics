# Syfte: Skapar backup av specifika filer och mappar med datumstämpel. 
# Loggar resultatet till backup.log

BACKUP_DIR="$HOME/automation-basics/backups"

mkdir -p "$BACKUP_DIR"

DATE=$(date +%F)

FILES_TO_BACKUP=(
    "$HOME/automation-basics/bash"
    "$HOME/automation-basics/python"
)

BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

LOG_FILE="$HOME/automation-basics/logs/backup.log"

if tar -czf "$BACKUP_FILE" "${FILES_TO_BACKUP[@]}"; then
    echo "$(date '+%F %T') - $BACKUP_FILE created successfully" | tee -a "$LOG_FILE"
else
    echo "$(date '+%F %T') - ERROR: Backup failed" | tee -a "$LOG_FILE" >&2
fi