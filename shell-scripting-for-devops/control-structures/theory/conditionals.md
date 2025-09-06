# Conditionals in Shell Scripting

Conditional statements are fundamental in shell scripting, allowing scripts to make decisions based on certain conditions. This document will cover the primary types of conditional statements used in shell scripting: `if`, `else`, and `case`.

## 1. If Statement

The `if` statement evaluates a condition and executes a block of code if the condition is true. The basic syntax is as follows:

```bash
if [ condition ]; then
    # code to execute if condition is true
fi
```

### Example:

```bash
if [ -f "file.txt" ]; then
    echo "file.txt exists."
fi
```

## 2. If-Else Statement

The `if-else` statement provides an alternative block of code to execute if the condition is false. The syntax is:

```bash
if [ condition ]; then
    # code to execute if condition is true
else
    # code to execute if condition is false
fi
```

### Example:

```bash
if [ -f "file.txt" ]; then
    echo "file.txt exists."
else
    echo "file.txt does not exist."
fi
```

## 3. If-Elif-Else Statement

The `if-elif-else` statement allows for multiple conditions to be checked in sequence. The syntax is:

```bash
if [ condition1 ]; then
    # code for condition1
elif [ condition2 ]; then
    # code for condition2
else
    # code if none of the conditions are true
fi
```

### Example:

```bash
if [ $age -lt 18 ]; then
    echo "You are a minor."
elif [ $age -lt 65 ]; then
    echo "You are an adult."
else
    echo "You are a senior."
fi
```

## 4. Case Statement

The `case` statement is used for multi-way branching, allowing a variable to be tested against multiple patterns. The syntax is:

```bash
case variable in
    pattern1)
        # code for pattern1
        ;;
    pattern2)
        # code for pattern2
        ;;
    *)
        # code if no patterns match
        ;;
esac
```

### Example:

```bash
case $day in
    Monday)
        echo "Start of the week."
        ;;
    Friday)
        echo "End of the week."
        ;;
    *)
        echo "Midweek day."
        ;;
esac
```

## Conclusion

Understanding and utilizing conditional statements is crucial for effective shell scripting. They enable scripts to respond dynamically to different inputs and conditions, making them powerful tools for automation and decision-making in DevOps practices.