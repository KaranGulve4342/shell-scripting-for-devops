# Shell Scripting Cheatsheet

## Basic Commands
- `ls`: List directory contents.
- `cd`: Change the current directory.
- `pwd`: Print the current working directory.
- `mkdir`: Create a new directory.
- `rm`: Remove files or directories.
- `cp`: Copy files or directories.
- `mv`: Move or rename files or directories.

## File Permissions
- `chmod`: Change file permissions.
  - Example: `chmod +x script.sh` (make script executable)
- `chown`: Change file owner.
- `chgrp`: Change group ownership.

## Variables
- Declare a variable: `variable_name=value`
- Access a variable: `$variable_name`
- Example: 
  ```bash
  name="John"
  echo "Hello, $name"
  ```

## Conditionals
- `if` statement:
  ```bash
  if [ condition ]; then
      # commands
  fi
  ```
- `else` statement:
  ```bash
  if [ condition ]; then
      # commands
  else
      # commands
  fi
  ```

## Loops
- `for` loop:
  ```bash
  for i in {1..5}; do
      echo $i
  done
  ```
- `while` loop:
  ```bash
  while [ condition ]; do
      # commands
  done
  ```

## Functions
- Define a function:
  ```bash
  function_name() {
      # commands
  }
  ```
- Call a function:
  ```bash
  function_name
  ```

## Exit Codes
- Check the exit code of the last command: `echo $?`
- Common exit codes:
  - `0`: Success
  - `1`: General error
  - `2`: Misuse of shell builtins

## Debugging
- Use `set -x` to enable debugging.
- Use `set +x` to disable debugging.

## Logging
- Redirect output to a log file:
  ```bash
  command >> logfile.txt 2>&1
  ```

## Useful Tips
- Use `#` for comments in scripts.
- Use `echo` for outputting text.
- Use `read` to take user input.

This cheatsheet serves as a quick reference for common shell scripting commands and syntax.