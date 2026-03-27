#!/bin/bash
# Script 1: System Identity Report
# Author: [Your Name] | Course: Open Source Software

STUDENT_NAME="[Your Name]"
SOFTWARE_CHOICE="VLC Media Player"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(lsb_release -ds)
CURRENT_DATE=$(date)
HOME_DIR=$HOME

# --- Display ---
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Kernel      : $KERNEL"
echo "Distro      : $DISTRO"
echo "User        : $USER_NAME"
echo "Home        : $HOME_DIR"
echo "Uptime      : $UPTIME"
echo "Date/Time   : $CURRENT_DATE"
echo "--------------------------------"
echo "OS License  : This system is covered by the GNU GPL License."
echo "Audit Target: $SOFTWARE_CHOICE"
echo "================================"