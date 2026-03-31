#!/bin/bash
# Script 1: System Identity Report

# --- Variables ---
STUDENT_NAME="[Aditya Chandra]"
SOFTWARE_CHOICE="Python"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep "PRETTY_NAME" | cut -d'"' -f2)
CURRENT_DATE=$(date)

# --- Display ---
echo "================================"
echo "  Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Operating System : $DISTRO"
echo "Kernel Version   : $KERNEL"
echo "Current User     : $USER_NAME"
echo "System Uptime    : $UPTIME"
echo "Current Date     : $CURRENT_DATE"
echo "--------------------------------"
echo "Note: This OS is covered by various open-source licenses,"
echo "primarily the GNU GPL."
echo "================================"
