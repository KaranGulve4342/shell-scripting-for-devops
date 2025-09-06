# Exit Codes in Shell Scripting

Exit codes are an essential aspect of shell scripting that indicate the success or failure of a command or script. Understanding exit codes allows developers to handle errors effectively and make informed decisions based on the outcome of executed commands.

## What are Exit Codes?

In Unix and Linux systems, every command returns an exit code (also known as a return status or exit status) when it completes. This exit code is a numerical value that indicates whether the command was successful or if an error occurred. By convention:

- An exit code of `0` signifies success.
- Any non-zero exit code indicates an error or an abnormal termination.

## Importance of Exit Codes

Exit codes are crucial for several reasons:

1. **Error Handling**: They allow scripts to detect errors and take appropriate actions, such as retrying a command, logging an error message, or exiting the script gracefully.
  
2. **Conditional Execution**: Exit codes can be used in conditional statements to control the flow of a script. For example, you can use an `if` statement to check the exit code of a command and execute different actions based on the result.

3. **Debugging**: Exit codes help in debugging scripts by providing insights into where and why a script failed.

## Common Exit Codes

While exit codes can be defined by the user, several standard exit codes are commonly used:

- `0`: Success
- `1`: General error (catchall for general errors)
- `2`: Misuse of shell builtins (e.g., syntax errors)
- `126`: Command invoked cannot execute
- `127`: Command not found
- `128`: Invalid argument to exit
- `130`: Script terminated by Control-C
- `255`: Exit status out of range

## How to Check Exit Codes

In a shell script, you can check the exit code of the last executed command using the special variable `$?`. For example:

```bash
#!/bin/bash

# Run a command
ls /nonexistent_directory

# Check the exit code
if [ $? -ne 0 ]; then
    echo "The command failed."
else
    echo "The command succeeded."
fi
```

In this example, if the `ls` command fails (which it will, since the directory does not exist), the script will output "The command failed."

## Conclusion

Understanding and utilizing exit codes is vital for writing robust shell scripts. By effectively handling exit codes, you can create scripts that are not only functional but also resilient to errors, making your automation tasks more reliable.