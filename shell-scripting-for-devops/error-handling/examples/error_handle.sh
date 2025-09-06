#!/bin/bash

# Example of error handling in a shell script

# Function to handle errors
error_handler() {
    echo "Error occurred in script at line: $1"
    exit 1
}

# Set a trap to catch errors and call the error_handler function
trap 'error_handler $LINENO' ERR

# Example command that may fail
echo "Attempting to create a directory..."
mkdir /some/nonexistent/directory

# If the command above fails, the error_handler will be triggered
echo "This line will not be executed if the previous command fails."