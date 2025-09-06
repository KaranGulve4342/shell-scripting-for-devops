#!/bin/bash

# This script automates the creation of a new user on a Linux system.

# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Function to create a user
create_user() {
  local username=$1
  local password=$2

  # Create the user with the specified username and password
  useradd -m -p "$(openssl passwd -1 "$password")" "$username"
  
  if [ $? -eq 0 ]; then
    echo "User '$username' created successfully."
  else
    echo "Failed to create user '$username'."
    exit 1
  fi
}

# Main script execution
if [ $# -ne 2 ]; then
  echo "Usage: $0 <username> <password>"
  exit 1
fi

create_user "$1" "$2"