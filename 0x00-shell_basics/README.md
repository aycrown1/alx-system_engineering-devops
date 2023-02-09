## 0x00-shell, Basics

This Scripts describes basic command that are use to navigate in a shell



[0-current_working_directory](./0-current_working_directory) - 
 A script that prints the absolute path name of the current working directory.

    
[1-listit](./1-listit) -A script that Display the contents list of your current directory.


[2-bring_me_home](2-bring_me_home) - A script that changes the working directory to the user’s home directory. 

          

[3-listfiles](3-listfiles) - A script that Display current directory contents in a long format.
 
         

[4-listmorefiles](4-listmorefiles) - A script that Display current directory contents, including hidden files (starting with .


[5-listfilesdigitonly](5-listfilesdigitonly) - Displays current directory contents.

   - Long format
   - with user and group IDs displayed numerically
   - And hidden files (starting with .)

  
[6-firstdirectory](6-firstdirectory) - Creates a script that creates a directory named my_first_directory in the /tmp/ directory.

 
[7-movethatfile](7-movethatfile) - Moves the file betty from /tmp/ to /tmp/my_first_directory.
     


[8-firstdelete](8-firstdelete) - Deletes the file betty.

The file betty is in /tmp/my_first_directory


[9-firstdirdeletion](9-firstdirdeletion) - Delete the directory my_first_directory that is in the /tmp directory.


[10-back](10-back) - Changes the working directory to the previous one.


[11-lists](11-lists) - Lists all files (even ones with names beginning with a period character, which are normally hidden) in the current directory and the parent of the working directory and the /boot directory (in this order), in long format.


[12-file_type](12-file_type) - A script that prints the type of the file named iamafile. The file iamafile is located in the /tmp directory.


[13-symbolic_link](13-symbolic_link) - A symlink is a symbolic Linux/ UNIX link that points to another file or folder on your computer, or a connected file system

This script creates a symbolic link to /bin/ls, named __ls__


[14-copy_html](14-copy_html) - copies all the .html files from the current working directory to the parent of the working directory, but only copy files that did not exist in the parent of the working directory or were newer than the versions in the parent of the working directory.


#Advanced


[100-lets_move](100-lets_move) - A script that moves all files beginning with an uppercase letter to the directory /tmp/u.


We can assume that the directory /tmp/u will exist when we will run your script


[101-clean_emacs](101-clean_emacs) - A script that deletes all files in the current working directory that end with the character ~.


[02-tree](02-tree) - A script that creates the directories welcome/, welcome/to/ and welcome/to/school in the current directory.  


[103-commas](103-commas) - A script that lists all the files and directories of the current directory, separated by commas (,).

-  Directory names should end with a slash (/)
-  Files and directories starting with a dot (.) should be listed
- The listing should be alpha ordered, except for the directories . and .. which should be listed at the very beginning
- Only digits and letters are used to sort; Digits should come first
- You can assume that all the files we will test with will have at least one letter or one digit
- The listing should end with a new line


[school.mgc](school.mgc) - A magic file contains lines describing magic numbers, which identify particular types of files. Lines beginning with a > or & character represent continuation lines to a preceding main entry


The file command uses the /etc/magic file in its attempt to identify the type of a binary file.
