# Control Structures Interview Questions

## 1. What are control structures in shell scripting?
Control structures are constructs that dictate the flow of execution of the script based on certain conditions or loops. They include conditional statements (like `if`, `else`, `case`) and loops (like `for`, `while`, `until`).

## 2. How do you write an `if` statement in shell scripting?
An `if` statement can be written as follows:
```bash
if [ condition ]; then
    # commands to execute if condition is true
elif [ another_condition ]; then
    # commands to execute if another_condition is true
else
    # commands to execute if none of the conditions are true
fi
```

## 3. What is the difference between `for`, `while`, and `until` loops?
- `for` loop iterates over a list of items or a range of numbers.
- `while` loop continues to execute as long as a specified condition is true.
- `until` loop continues to execute until a specified condition becomes true.

## 4. Can you explain how a `case` statement works?
A `case` statement allows you to execute different commands based on the value of a variable. It is structured as follows:
```bash
case variable in
    pattern1)
        # commands for pattern1
        ;;
    pattern2)
        # commands for pattern2
        ;;
    *)
        # commands if no patterns match
        ;;
esac
```

## 5. How do you define a function in shell scripting?
A function can be defined using the following syntax:
```bash
function_name() {
    # commands to execute
}
```
You can call the function by simply using its name followed by parentheses.

## 6. What is the purpose of the `break` and `continue` statements in loops?
- `break` is used to exit a loop prematurely.
- `continue` is used to skip the current iteration and proceed to the next iteration of the loop.

## 7. How can you check multiple conditions in an `if` statement?
You can use logical operators such as `&&` (AND) and `||` (OR) to combine multiple conditions:
```bash
if [ condition1 ] && [ condition2 ]; then
    # commands if both conditions are true
fi
```

## 8. What is the significance of exit status in shell scripting?
The exit status of a command indicates whether it was successful or not. A status of `0` typically means success, while any non-zero value indicates an error. You can check the exit status using `$?`.

## 9. How do you handle errors in shell scripts?
You can handle errors by checking the exit status of commands and using conditional statements to take appropriate actions. Additionally, you can use `trap` to catch signals and errors.

## 10. Can you provide an example of a nested loop?
Certainly! Here’s a simple example of a nested loop:
```bash
for i in {1..3}; do
    for j in {1..2}; do
        echo "i: $i, j: $j"
    done
done
```