#!/bin/bash

dir=$1
file=$1
permissions=""

#cheking the type file or dir?
if [ -d "$dir" ]; 
then 
    echo "type of argument ${dir} -> is a directory"
    if [ -r "$dir" ]; #read
    then
        permissions+="read r-"
    fi

    if [ -w "$dir" ]; #read
    then
        permissions+="write w-"
    fi

    if [ -x "$dir" ]; #read
    then
        permissions+="exceute x"
    fi

    if [ -n "$permissions" ];
    then
        echo "${dir} dir has the following permissions: $permissions"
    else
        echo "${dir} dir has no type of permissions!"
    fi
elif [ -f "$file" ];
then
    echo "type of argument ${file} -> is a file"
    if [ -r "$file" ]; #read
    then
        permissions+="read -r "
    fi

    if [ -w "$file" ]; #read
    then
        permissions+="write w-"
    fi

    if [ -x "$file" ]; #read
    then
        permissions+="execute x"
    fi
    
    if [ -n "$permissions" ];
    then
        echo "${file} file has the following permissions: $permissions"
    else
        echo "${file} file has no type of permissions!"
    fi
else
    echo "your input ${1} is not file or directory!"
fi