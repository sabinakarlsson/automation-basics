# Syfte: Kontrollera status på en tjänst och logga resultat

LOG_FILE="logs/service_status.log"

SERVICE_NAME=$1

if [ -z "$SERVICE_NAME" ]; then
    echo "Usage: $0 <service_name>"
    exit 2
fi

if systemctl is-active --quiet "$SERVICE_NAME"; then
    STATUS="RUNNING"
    EXIT_CODE=0
else
    STATUS="NOT RUNNING"
    EXIT_CODE=1
    echo "WARNING: Service $SERVICE_NAME is not running!"
fi

TIMESTAMP=$(date "+%Y-%m-%d %H:%M")
echo "$TIMESTAMP Service:$SERVICE_NAME Status:$STATUS" >> "$LOG_FILE"

exit $EXIT_CODE