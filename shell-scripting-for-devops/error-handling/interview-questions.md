# Interview Questions for Error Handling in Shell Scripting

## 1. What are exit codes in shell scripting, and why are they important?
- Exit codes are numerical values returned by a command or script to indicate its success or failure. A code of `0` typically indicates success, while any non-zero code indicates an error. They are important for error handling and debugging, as they help determine the outcome of commands and scripts.

## 2. How can you check the exit status of the last executed command?
- You can check the exit status of the last executed command using the special variable `$?`. For example:
  ```bash
  command
  if [ $? -ne 0 ]; then
      echo "Command failed"
  fi
  ```

## 3. What is the purpose of the `set -e` command in a shell script?
- The `set -e` command causes the script to immediately exit if any command returns a non-zero exit status. This is useful for preventing the execution of subsequent commands when an error occurs.

## 4. How can you implement error handling in a shell script?
- Error handling can be implemented using conditional statements to check the exit status of commands, using `trap` to catch errors, and logging errors to a file for later review.

## 5. What is the `trap` command, and how is it used in error handling?
- The `trap` command allows you to specify commands to be executed when the script receives certain signals or when an error occurs. For example:
  ```bash
  trap 'echo "An error occurred. Exiting..."; exit 1;' ERR
  ```

## 6. How can you log errors in a shell script?
- Errors can be logged by redirecting error messages to a log file using `2>>` for standard error. For example:
  ```bash
  command 2>> error.log
  ```

## 7. What is input validation, and why is it important in shell scripting?
- Input validation is the process of ensuring that the data provided to a script meets certain criteria before processing. It is important to prevent errors, security vulnerabilities, and unexpected behavior in scripts.

## 8. Can you provide an example of how to validate user input in a shell script?
- An example of validating user input could be checking if a variable is empty:
  ```bash
  read -p "Enter your name: " name
  if [ -z "$name" ]; then
      echo "Name cannot be empty."
      exit 1
  fi
  ```

## 9. How do you handle errors in a pipeline of commands?
- You can handle errors in a pipeline by using the `set -o pipefail` option, which causes the pipeline to return the exit status of the last command that failed, rather than the last command in the pipeline.

## 10. What are some common debugging techniques for shell scripts?
- Common debugging techniques include using `set -x` to enable debugging output, checking exit statuses, using `echo` statements to print variable values, and employing a debugger like `bashdb`.