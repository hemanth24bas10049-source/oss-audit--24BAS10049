#!/bin/bash
# Script 3: Disk and Permission Auditor
DIRS=("/etc" "/var/log" "/usr/bin" "/tmp")
PYTHON_LIB="$HOME/.local/lib/python3.10/site-packages" # Common path
echo "Directory Audit Report"
echo "----------------------"
# Loop through standard directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "PATH: $DIR => Perms: $PERMS | Size: $SIZE"
    else
        echo "PATH: $DIR => Not found."
    fi
done
echo "----------------------"
echo "Checking Python AI Library Path..."
if [ -d "$PYTHON_LIB" ]; then
    echo "Python Libs found at: $PYTHON_LIB"
    ls -ld "$PYTHON_LIB" | awk '{print "Owner: " $3 " | Permissions: " $1}'
else
    echo "Default local site-packages not found. Check global /usr/lib/python3."
Fi
