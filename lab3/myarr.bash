#!/bin/bash 

echo "how many elements of an array do you want? "
read count

if ! [[ "$count" =~ ^[0-9]+$ ]] || [ "$count" -le 0 ]; then
    echo "Invalid input. Please enter a positive number."
    exit 1
fi

arr=()
for ((i=0; i<count; i++)); do
read -p "Enter element $(( i + 1 )): " value
arr+=("$value")
done
echo "You entered the following elements: ${arr[@]}"