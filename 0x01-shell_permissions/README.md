# 0x01-shell_permissions

 ## About


On a Linux system, each file and directory is assigned access rights for the owner of the file, the members of a group of related users, and everybody else. Rights can be assigned to read a file, to write a file, and to execute a file (i.e., run the file as a program).

The ls -l command is use to check the permission of a file or directory
      
     root@ubuntu:~# ls -l file
     -rw------- 1 root root 0 Feb  2 05:44 file

Here are some Script describing some Shell permissions
 
## Table of Content


* Mandatory

 * [0-iam_betty](#0-iam_betty)

 * [1-who_am_i](#who_am_i)

 * [2-groups](#2-groups)

 * [3-new_owner](#3-new_owner)

 * [4-empty](#4-empty)

 * [5-execute](#5-execute)

 * [6-multiple_permissions](#6-multiple_permissions)

 * [7-everybody](#7-everybody)

 * [8-James_Bond](#8-James_Bond)

 * [9- * John_Doe](#9-John_Doe)

 * [10-mirror_permissions](#10-mirror_permissions)

 * [11-directories_permissions](#11-directories_permissions)

 * [12-directory_permissions](#12-directory_permissions)

 * [13-change_group](#13-change_group)

* Advanced

 * []()

 * []()

 * []()

 * []()

 * []()


[0-iam_betty](0-iam_betty) - A script that switches the current user to the user `betty`.

 - Assume that the user `betty` exist when we will run this script
   
[1-who_am_i](1-who_am_i) - A script that prints the effective username of the current user.

      
[2-groups](2-groups) - A  script that prints all the groups the current user is part of. 


[3-new_owner](3-new_owner) -  script that changes the owner of the file `hello` to the user `betty`.


[4-empty](4-empty) - A script that creates an empty file called `hello`.


[5-execute](5-execute) - script that adds execute permission to the owner of the file `hello`.

- The file `hello` will be in the working directory


[6-multiple_permissions](6-multiple_permissions) - a script that adds execute permission to the owner and the group owner, and read permission to other users, to the file `hello`.

- The file `hello` will be in the working directory


[7-everybody](7-everybody) - A script that adds execution permission to the owner, the group owner and the other users, to the file `hello`

-  The file `hello` will be in the working directory


[8-James_Bond](8-James_Bond) - A script that sets the permission to the file `hello` as follows:

- Owner: no permission at all
- Group: no permission at all
- Other users: all the permissions

The file `hello` will be in the working directory 


[9-John_Doe](9-John_Doe) - A script that sets the mode of the file `hello` to this:

```
-rwxr-x-wx 1 root root 23 Feb 02 14:25 hello
```

- The file `hello` is in the working directory


[10-mirror_permissions](10-mirror_permissions) - A script that sets the mode of the file `hello` the same as `olleh`’s mode.

- The file `hello` will be in the working directory

- The file `olleh` will be in the working directory

This script works for any mode.


[11-directories_permissions](11-directories_permissions) - A script that adds execute permission to all subdirectories of the current directory for the owner, the group owner and all other users. Regular files will not be changed.


[12-directory_permissions](12-directory_permissions) - A script that creates a directory called `my_dir` with permissions `751` in the working directory.


[13-change_group](13-change_group) - A script that changes the group owner to `school` for the file `hello`.

- The file hello will be in the working directory

