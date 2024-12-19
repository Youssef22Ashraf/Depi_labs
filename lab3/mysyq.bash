#!/bin/bash

mysq() {
    local num=$1
    echo $((num * num))
}

# Example usage
read -p "Enter a number to calculate its square: " number
if [[ "$number" =~ ^-?[0-9]+$ ]]; then
    echo "The square of $number is $(mysq "$number")"
else
    echo "Invalid input. Please enter an integer."
fi
