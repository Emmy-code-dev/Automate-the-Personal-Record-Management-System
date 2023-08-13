#!/bin/bash

# Env. variables
backup_dir="/home/emmy/Documents"  # Backup Directory
file_to_backup="/home/emmy/Documents/records.txt"  # File/record to be backedup.
timestamp=$(date +"%Y%m%d%H%M%S")

# Create backup directory if it doesn't exist
if [ ! -d "$backup_dir" ]; then
    mkdir -p "$backup_dir"
fi

# Create timestamped backup folder
backup_folder="$backup_dir/backup_$timestamp"
mkdir "$backup_folder"

# Copy the file to the backup folder
cp "$file_to_backup" "$backup_folder"

# Display success message
echo "Backup of $file_to_backup created in $backup_folder"
