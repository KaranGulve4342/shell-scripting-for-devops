# File Permissions in Unix/Linux

File permissions are a fundamental aspect of Unix/Linux systems that control who can read, write, or execute a file. Understanding file permissions is crucial for maintaining security and proper access control in a multi-user environment.

## Types of Permissions

There are three types of permissions that can be assigned to files and directories:

1. **Read (r)**: Allows the user to read the contents of the file.
2. **Write (w)**: Allows the user to modify or delete the file.
3. **Execute (x)**: Allows the user to execute the file as a program.

## Permission Levels

Permissions can be set for three different categories of users:

- **Owner**: The user who owns the file.
- **Group**: A set of users who share the same group.
- **Others**: All other users on the system.

## Viewing Permissions

You can view the permissions of files and directories using the `ls -l` command. The output will look something like this:

```
-rwxr-xr-- 1 user group 1234 Jan 01 12:00 example.sh
```

The first column indicates the permissions:
- The first character indicates the type (`-` for file, `d` for directory).
- The next three characters represent the owner's permissions.
- The following three characters represent the group's permissions.
- The last three characters represent others' permissions.

## Changing Permissions

You can change file permissions using the `chmod` command. The syntax is:

```
chmod [permissions] [file]
```

Permissions can be set using either symbolic or numeric modes.

### Symbolic Mode

- To add a permission: `chmod u+x file.sh` (adds execute permission for the owner).
- To remove a permission: `chmod g-w file.sh` (removes write permission for the group).
- To set exact permissions: `chmod u=rwx,g=rx,o=r file.sh` (sets specific permissions for owner, group, and others).

### Numeric Mode

Permissions can also be represented numerically:
- Read = 4
- Write = 2
- Execute = 1

You can combine these values to set permissions. For example:
```
chmod 755 file.sh
```
This sets the permissions to `rwxr-xr-x` (owner can read, write, execute; group and others can read and execute).

## Conclusion

Understanding and managing file permissions is essential for ensuring the security and proper functioning of Unix/Linux systems. By mastering file permissions, you can effectively control access to files and directories, protecting sensitive information and maintaining system integrity.