# ls
\
ls is a linux command used to list files or directories in a directory
\
\
ls is a built-in tool and doesn't need to be installed.
\
\
It is located in /bin/ls
\
\
It is present in most linux based systems and can be found in the bash terminal.
\
\
The syntax for *ls* is as below:
\
\
`ls <folder path>`
\
\
This will list all contents of a folder (excluding hidden files) in a space delimited fashion.
\
\
`ls -l` will output the contents as a list
\
\
ls can also be used for the following:
\
\
- listing hidden files
\
- list only directories
\
- list directories recursively
\
- list file sizes
\
\
\
**1. To list the hidden files: `ls -a`**
\
\
\
This will list all the files and directories including those that start with a "."
\
\
\
**2. List only directories: `ls -l | grep "^d"`**
\
\
\
This requires the use of a another tool called `grep`
\
\
`ls -l` ouputs a list of files **and** directories, which is pipe(line)d to grep which filters lines which match the regex "^d"
\
\
"^d" indicates anything that start with **d**
\
\
**d** here indicates directories
\
\
\
**3. listing directories recursively: `ls -R`**
\
\
\
This is helpful in cases where you want to take a look at the contents of all the directories at once.
\
\
`ls -R <folder name>` does just that
\
\
The results are sorted in alphabetical order. If you want it sorted on time: `ls -Rt`
\
\
If you want it in reverse order of creation of file / directory: `ls -Rtr`
\
\
\
**4. Listing file sizes: `ls -Sshl <folder name>`**
\
\
\
If you want to take a look at the files with descending order of sizes, you have to pass the arguments Ss, h and l
\
\
here,
\
\
**S**: Size
\
**s**: sort
\
**h**: human readable
\
**l**: ouput the contents as a list
\
**Ss**: **S** and **s** when used together means to sort by size(descending)
\
\
Just add a **r** at the end to reverse the order, i.e, list files in a human readable fashion, sorted by size in ascending order
\
\
Take a look at the manual for ls to get more info: **`man ls`**
\
\
[Wikipedia](https://en.wikipedia.org/wiki/Ls)
\
\
