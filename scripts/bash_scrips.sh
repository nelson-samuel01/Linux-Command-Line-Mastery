#!/bin/bash

# Home Directory Setup and Logging Script

# variable: base directory and log file
BASE_DIR="$HOME/script_demo"
LOG_FILE="$BASE_DIR/activity.log"
DIRS=("logs" "backups" "reports" "temp")

# create base directory if it does not exist (conditional)

if [ ! -d "$BASE_DIR" ]; then 
	mkdir -p "$BASE_DIR"
	echo "$(date): create base directory $BASE_DIR" >> "$LOG_FILE"
else
	echo "$(date): Base directory already exists" >> "$LOG_FILE"
fi

# loop through the list and create each sub-directory

for dir in "${DIRS[@]}"; do
	if [ ! -d "$BASE_DIR/$dir" ]; then
		mkdir "$BASE_DIR/$dir"
		echo "$(date): Create $dir" >> "$LOG_FILE"
	else
		echo "$(date): $dir already exists, skipping" >> "$LOG_FILE"
	fi
done

echo "Done. see log at $LOG_FILE"

# SCRIPT DESCRIPTION: 

# This script sets the base folder to ~/script_demo and the log file to ~/script_demo/activity.log.
#If script_demo doesn’t exist, it creates it and records that in the log. If it already exists, it logs that instead.
#It checks for four subfolders—logs, backups, reports, and temp—and creates any that are missing. Existing folders are left in place, and the script logs that they were skipped.
#It prints a final message showing where to find the log.