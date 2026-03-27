#!/bin/bash
# Script 1: System Identity Report


# --- Variables ---
STUDENT_NAME="[HEMANTH KRISHNI]"
SOFTWARE_CHOICE="Python"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep "^PRETTY_NAME" | cut -d'"' -f2)
CURRENT_TIME=$(date "+%Y-%m-%d %H:%M:%S")

# --- Display ---
echo "================================================="
echo "   Open Source Audit — $STUDENT_NAME"
echo "================================================="
echo "Software Focus : $SOFTWARE_CHOICE"
echo "Distro         : $DISTRO"
echo "Kernel         : $KERNEL"
echo "User           : $USER_NAME"
echo "Home           : $HOME_DIR"
echo "Uptime         : $UPTIME"
echo "Current Date   : $CURRENT_TIME"
echo "-------------------------------------------------"
echo "OS License Note: This Linux system is primarily "
echo "covered by the GNU GPL v2 License."
echo "================================================="
