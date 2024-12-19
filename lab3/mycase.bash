#!/bin/bash

echo "Enter a character: "
read char

if [[ "$char" =~ [A-Z] ]]; then
    echo "character ($char) type is Upper Cases"
elif [[ "$char" =~ [a-z] ]]; then
echo "character ($char) type is Lower Cases"
elif [[ "$char" =~ [0-9] ]]; then
echo "character ($char) type is Number"
else
echo "Nothing or special characters"
fi

echo "Enter a string: "
read string
if [[ "$string" =~ ^[A-Z]+$ ]]; then
echo "string ($string) is Upper casses"
elif [[ "$string" =~ ^[a-z]+$ ]]; then
echo "string is Lower casses"
elif [[ "$string" =~ ^[0-9]+$ ]]; then
echo "string is Numbers"
elif [[ "$string" =~ [A-Za-z] && "$string" =~ [0-9] ]]; then
echo "string is mix of Character types"
else
echo "Nothing or special characters"
fi
