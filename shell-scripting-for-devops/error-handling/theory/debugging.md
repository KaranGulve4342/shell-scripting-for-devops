# Debugging Techniques for Shell Scripts

Debugging is an essential part of shell scripting that helps identify and resolve issues within scripts. This document outlines various debugging techniques that can be employed to troubleshoot and fix errors in shell scripts effectively.

## 1. Using `set` Command

The `set` command can be used to enable debugging options in your shell script. Here are some useful options:

- `set -x`: This option prints each command and its arguments to the terminal before executing it. This is useful for tracing the flow of execution.
- `set -e`: This option causes the script to exit immediately if any command returns a non-zero exit status. This helps catch errors early.

### Example:
```bash
#!/bin/bash
set -xe

echo "Starting the script"
# Your script commands here
```

## 2. Echo Statements

Inserting `echo` statements at various points in your script can help track the values of variables and the flow of execution. This is a simple yet effective way to debug.

### Example:
```bash
#!/bin/bash

var="Hello"
echo "The value of var is: $var"
# More commands
```

## 3. Using `trap`

The `trap` command can be used to catch errors and execute a specific command when an error occurs. This is useful for cleanup or logging purposes.

### Example:
```bash
#!/bin/bash

trap 'echo "An error occurred. Exiting..."; exit 1;' ERR

# Your script commands here
```

## 4. Checking Exit Status

After executing commands, you can check the exit status using `$?`. This helps determine if the previous command was successful.

### Example:
```bash
#!/bin/bash

cp source.txt destination.txt
if [ $? -ne 0 ]; then
    echo "Copy failed!"
fi
```

## 5. Debugging with `bash -x`

You can run your script with the `bash -x` command to enable debugging for the entire script without modifying the script itself.

### Example:
```bash
bash -x your_script.sh
```

## Conclusion

Debugging is a critical skill for shell scripting. By using the techniques outlined above, you can effectively identify and resolve issues in your scripts, leading to more robust and reliable automation solutions.