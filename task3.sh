#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/usr/bin" "/usr/lib/python3")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extracting perms, owner, and group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

# Python specific check
PY_CONFIG="/etc/python3"
if [ -d "$PY_CONFIG" ]; then
    echo "Python Config Folder Found: $(ls -ld $PY_CONFIG)"
fi
