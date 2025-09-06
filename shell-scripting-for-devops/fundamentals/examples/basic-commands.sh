#!/bin/bash

# Basic Commands Examples

# 1. Print the current working directory
echo "Current Working Directory:"
pwd

# 2. List files and directories
echo "Listing Files and Directories:"
ls -l

# 3. Create a new directory
echo "Creating a new directory named 'test_dir':"
mkdir test_dir

# 4. Change into the new directory
echo "Changing into 'test_dir':"
cd test_dir

# 5. Create a new file
echo "Creating a new file named 'example.txt':"
touch example.txt

# 6. Write to the file
echo "Writing 'Hello, World!' to 'example.txt':"
echo "Hello, World!" > example.txt

# 7. Display the contents of the file
echo "Displaying the contents of 'example.txt':"
cat example.txt

# 8. Remove the file
echo "Removing 'example.txt':"
rm example.txt

# 9. Change back to the previous directory
echo "Changing back to the previous directory:"
cd ..

# 10. Remove the created directory
echo "Removing 'test_dir':"
rmdir test_dir

echo "Basic commands executed successfully."