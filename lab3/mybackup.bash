#!/bin/bash

backup_dir="$HOME/backup"
mkdir -p "$backup_dir"
ls ~
echo "backup starting: " 
for file_dir in ~/*; do
    if [ -e "$file_dir" ]; then
        if [ -d "$file_dir"]; then
            cp -r "$file_dir" "$backup_dir"
        else
            cp "$file_dir" "$backup_dir"
        fi
    fi
done
echo "############################"
echo "Backup complete."
echo "backup_dir contents: "
ls "$backup_dir"