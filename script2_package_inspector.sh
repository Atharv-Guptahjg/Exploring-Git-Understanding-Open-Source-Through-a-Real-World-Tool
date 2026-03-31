#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

# Check if package is installed
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement for description
case $PACKAGE in
    git) 
        echo "Git: a distributed version control system built for speed and collaboration" ;;
    apache2) 
        echo "Apache: a powerful web server that helped build the internet" ;;
    mysql) 
        echo "MySQL: open-source database used in countless applications" ;;
    firefox) 
        echo "Firefox: a browser focused on privacy and open web standards" ;;
    *)
        echo "Unknown package" ;;
esac
