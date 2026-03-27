#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script.sh [logfile] [keyword]
LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error'
COUNT=0
# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi
# While-read loop to process file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"
echo "-------------------------------------------------"
echo "Analysis Summary for: $LOGFILE"
echo "Keyword '$KEYWORD' appeared $COUNT times."
echo "-------------------------------------------------"
# Print last 5 occurrences
if [ $COUNT -gt 0 ]; then
    echo "Last 5 matching entries:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi
