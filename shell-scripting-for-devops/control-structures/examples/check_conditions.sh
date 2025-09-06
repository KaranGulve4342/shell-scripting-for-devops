#!/bin/bash

# This script demonstrates how to check conditions using shell scripting.

# Example of checking if a file exists
FILE="/path/to/file.txt"

if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    echo "$FILE does not exist."
fi

# Example of checking if a variable is empty
VAR=""

if [ -z "$VAR" ]; then
    echo "VAR is empty."
else
    echo "VAR is not empty."
fi

# Example of checking a numeric condition
NUM=10

if [ "$NUM" -gt 5 ]; then
    echo "$NUM is greater than 5."
else
    echo "$NUM is not greater than 5."
fi

# Example of checking a string condition
STRING="Hello"

if [ "$STRING" == "Hello" ]; then
    echo "The string is Hello."
else
    echo "The string is not Hello."
fi