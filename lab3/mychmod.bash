#!/bin/bash
ls -l 
chmod +x ~/* #direct way
ls -l ~
##################################
#if we use a loop
ls -l ~
for file in ~/*; do
    if [ -e "$file" ]; then
         chmod +x "$file"
    fi
 done
ls -l ~