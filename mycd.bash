#!/bin/bash

dir=$1

if [ -z "$dir" ]; 
then
    cd ~ 
    echo "Directory changed to Home directory: ~"
elif [ -d "$dir" ]; 
then 
    cd "$dir"
    echo "Directory changed to ${dir} directory: "
else
    echo "Error: $1 Directory does not exist"
fi
