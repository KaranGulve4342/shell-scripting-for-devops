# Interview Questions for Shell Scripting Fundamentals

## 1. What is a shell script?
A shell script is a text file containing a sequence of commands for a Unix-based operating system's shell to execute. It automates tasks and can include control structures, functions, and variables.

## 2. How do you make a shell script executable?
To make a shell script executable, you can use the `chmod` command. For example:
```bash
chmod +x script.sh
```

## 3. What is the purpose of the shebang (`#!`) at the beginning of a script?
The shebang indicates the script's interpreter. For example, `#!/bin/bash` tells the system to use the Bash shell to execute the script.

## 4. How do you declare a variable in a shell script?
You can declare a variable by simply assigning a value to it without spaces. For example:
```bash
name="John"
```

## 5. How do you access the value of a variable?
You can access the value of a variable by prefixing it with a dollar sign (`$`). For example:
```bash
echo $name
```

## 6. What are positional parameters?
Positional parameters are variables that hold the arguments passed to a script. For example, `$1`, `$2`, etc., represent the first and second arguments, respectively.

## 7. How do you read user input in a shell script?
You can read user input using the `read` command. For example:
```bash
read -p "Enter your name: " name
```

## 8. What is the difference between `=` and `==` in shell scripting?
In shell scripting, `=` is used for assignment, while `==` is used for string comparison in conditional statements.

## 9. How do you check if a file exists in a shell script?
You can check if a file exists using the `-e` flag in an `if` statement. For example:
```bash
if [ -e "file.txt" ]; then
    echo "File exists."
fi
```

## 10. What is the purpose of the `exit` command in a shell script?
The `exit` command is used to terminate a script and can return an exit status to the calling process. An exit status of `0` typically indicates success, while any non-zero value indicates an error.