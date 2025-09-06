#!/bin/bash

# Example of a for loop in a shell script

# Define an array of items
items=("apple" "banana" "cherry" "date")

# Iterate over the array using a for loop
for item in "${items[@]}"; do
    echo "Fruit: $item"
done

# Output the numbers from 1 to 5
for ((i=1; i<=5; i++)); do
    echo "Number: $i"
done