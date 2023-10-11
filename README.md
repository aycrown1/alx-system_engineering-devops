# alx-system_engineering-devops

## WHAT SYSTEM ENGININEERING DEVOPS
 system engineering devOps is the integration of system engineering principles into the devOp process. applying systems thinking and  engineering pratices to the development and the operation of software system.
 
 System engineering devOps is an approach to designing, analysing, managing complex system, automate and integrate the processes of software development, testing, and deployment, making it more effecient and collaborative.

 
### [SHELL BASICS](0x00-shell_basics)

A shell is a command-line interface that allows users to interact with an operating system. In DevOps, scripts and commands are often used in shell scripting for tasks like automation and system management.
Shell basics involve using a command-line interface to interact with an operating system. You issue commands in the command prompt to perform actions like listing files with "ls," changing directories with "cd," and creating files or directories. Navigation is essential and relies on understanding relative and absolute paths. File and directory names are case-sensitive.


```shell
$ pwd # print current working directory
user/tmp
$ mkdir test test/school test/School test/home # Creates a new directory in the current location
$ cd test # Changes the current directory
~test $ ls school # Lists files and directories in the current directory
index.html  index.js  task.c  task.py  task.txt
~test $ less task.txt # Opens and views the content of file aqnd Press "q" to exit.
Hello!, Welcome Back to School...
~test $ touch newfile.txt # Creates a new empty file
~test $ cp file.txt backup/file.txt # Copies "file.txt" to the "backup" directory with the same name.
~test $ mv ~/backup/old.txt backup/new.txt # Renames the "old.txt" to "new.txt"
~test $ mv ~/backup/new.txt . # Moves the file to the current directory
~test $ rmdir ~/backup # removes the directory
~test $ rm index.html # removes the file
~test $ cd .. # changes directory to the previous home directory
```
Shell skills are fundamental for tasks like system administration, DevOps, and scripting, enabling efficient control of the system, files, and processes in a text-based environment.



### SHELL PERMISSION


