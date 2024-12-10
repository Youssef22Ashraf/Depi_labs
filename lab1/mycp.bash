#!/bin/bash
#copy file to another
cp cp1.txt cp2.txt

cat cp2.txt

#copy files to dir
current_path=$(pwd)

if [ ! -d "$current_path/dest_test" ]; then
    mkdir "$current_path/dest_test"
    echo " "
    echo "dir created"
else
    echo " "
    echo "dir exist"
fi

cp cp1.txt cp2.txt "$current_path/dest_test"
ls "$current_path/dest_test"
