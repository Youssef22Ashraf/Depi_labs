#!/bin/bash
ls -l 
chmod +x ~/* #direct way
ls -l ~
##################################
#if we use a loop
ls -l ~
for file_dir in ~/*; do
    if [ -e "$file_dir" ]; then
        chmod +x "$file_dir"
    fi
done
ls -l ~