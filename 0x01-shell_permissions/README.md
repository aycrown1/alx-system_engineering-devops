## 0x01-shell_permissions
 # About


On a Linux system, each file and directory is assigned access rights for the owner of the file, the members of a group of related users, and everybody else. Rights can be assigned to read a file, to write a file, and to execute a file (i.e., run the file as a program).

The ls -l command is use to check the permission of a file or directory
      
     root@localhost:~# ls -l file
     -rw------- 1 root root 0 Feb  2 05:44 file

Here are some Script describing some Shell permissions


[0-iam_betty](0-iam_betty) - A script that switches the current user to the user betty.

Assume that the user betty will exist when we will run this script

[1-who_am_i](1-who_am_i)
