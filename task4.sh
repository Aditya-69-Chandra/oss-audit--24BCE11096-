 #!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh /var/log/syslog "python"

LOGFILE=$1
KEYWORD=${2:-"python"}
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Loop through and count
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "The keyword '$KEYWORD' appeared $COUNT times in $LOGFILE"

# Print last 5 matches
echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
