#!/bin/bash

echo -n "Enter your logName: "
read logname

if id -u "$logname" >/dev/null 2>&1; then

    home_dir=$(eval echo ~$logname)
    if [ -d "$home_dir" ]; then

        echo " "
        echo "Full information about files and directories in $logname's home directory ($home_dir):"
        ls -l "$home_dir"

        echo " "
        echo "Copying all content from $home_dir to /tmp"
        cp -r "$home_dir"/* /tmp >2/dev/null
        echo " "
        echo "temp dir content: "
        ls -l /tmp
        echo "Copy completed!"
        echo "#########################################################"
        echo "Current Processes for $logname: "
        ps -u "$logname"
        
    else
        echo "error! home directory for $logname is not accessable"
    fi
else
    echo "error! user $logname is not found or not a valid user"
fi