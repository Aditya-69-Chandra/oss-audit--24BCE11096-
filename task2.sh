#!/bin/bash
# Script 2: FOSS Package Inspector (Python Focus)

PACKAGE="python3"

# Check if package is installed
if dpkg -l $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    # Extract version and license info
    apt-cache show $PACKAGE | grep -E 'Version|Section|Description'
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement for philosophy
case $PACKAGE in
    python3)
        echo "Philosophy: Python is a community-driven language that emphasizes code readability."
        ;;
    httpd|apache2)
        echo "Philosophy: The foundation of the global web server ecosystem."
        ;;
    *)
        echo "Philosophy: Supporting the freedom to run, study, and share software."
        ;;
esac
