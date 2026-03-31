#!/bin/bash
# Script 1: System Identity Report
# Author: Atharv Gupta | Course: Open Source Software

STUDENT_NAME="Atharv Gupta"
SOFTWARE_CHOICE="Git"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')

echo "================================"
echo "  Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software : $SOFTWARE_CHOICE"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"
echo "Distro   : $DISTRO"
echo "License  : Linux is mostly licensed under GPL (Free Software License)"
