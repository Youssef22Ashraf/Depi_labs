#!/bin/bash

echo "How many numbers do you want in the array?"
read count

# Check if the count is a valid number
if ! [[ "$count" =~ ^[0-9]+$ ]] || [ "$count" -le 0 ]; then
    echo "Invalid input. Please enter a positive number."
    exit 1
fi

# Fill the array and calculate the sum
numbers=()
sum=0
for ((i = 0; i < count; i++)); do
    read -p "Enter number $((i + 1)): " num
    if ! [[ "$num" =~ ^[0-9]+$ ]]; then
        echo "Invalid input. Please enter whole numbers only."
        exit 1
    fi
    numbers+=("$num")
    sum=$(expr $sum + $num)
done

average=$(expr $sum / $count)
#echo "The sum of the numbers (${numbers[@]}) is: $sum"
echo "The average of the numbers (${numbers[@]}) is: $average"
