#!/bin/bash

dir=$1
current_path=$(pwd)
#5)basic myls.bash

if [ -z "$dir" ]; 
then
    ls "${current_path}"
elif [ -d "$dir" ]; 
then 
    ls "${dir}"
else
    echo "Error: $1 Directory does not exist to be listed"
fi

#6) with enhancement
if [ -z "$dir" ]; 
then
    select choice in -l -a -d -i -R exit
    do
        case $choice in
            -l) ls -l "${current_path}"
            ;;
            -a) ls -a "${current_path}"
            ;;
            -d) ls -d "${current_path}"
            ;;
            -i) ls -i "${current_path}"
            ;;
            -R) ls -R "${current_path}"
            ;;
            exit) echo "exit menu"
            break
            ;;
        esac
    done
elif [ -d "$dir" ]; 
then 
    select choice in -l -a -d -i -R exit
    do
        case $choice in
            -l) ls -l "${dir}"
            ;;
            -a) ls -a "${dir}"
            ;;
            -d) ls -d "${dir}"
            ;;
            -i) ls -i "${dir}"
            ;;
            -R) ls -R "${dir}"
            ;;
            exit) echo "exit menu"
            break
            ;;
        esac
    done
else
    echo "Error: $1 Directory does not exist to be listed"
fi

#bonus part