#!/bin/bash

# This script validates user input for a shell script.

# Function to validate input
validate_input() {
    if [[ -z "$1" ]]; then
        echo "Error: Input cannot be empty."
        return 1
    elif ! [[ "$1" =~ ^[0-9]+$ ]]; then
        echo "Error: Input must be a number."
        return 1
    fi
    echo "Valid input: $1"
    return 0
}

# Main script execution
read -p "Enter a number: " user_input
validate_input "$user_input"