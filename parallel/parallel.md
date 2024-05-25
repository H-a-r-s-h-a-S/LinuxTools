# parallel

Did you ever have a list of commands that you wanted to execute in parallel ?

Or perform a repetitive task in parallel ?

One example could be that you have a list of urls for a file in a text file and you know you can use wget to download the file. But what do you do if you have 100s of them ?

You have a list of 69 folder names in a file and you want to create a folder under that name.

You can write a script - shell script / python script - or any script to make this work.

But what if you could make it work in a single line ?

The way I use parallel to handle this is as below:

```cat <file containing folder names.txt> | parallel mkdir -j5``` 

Let me breakdown:

```cat filename.txt``` - Lists the content of a file

```|``` - Pipe the results to the next command

```parallel``` - execute commands in parallel

```mkdir``` - create a folder

```j5``` - argument of parallel command specifying 5 parallel tasks at any given time

So, this will add mkdir to each line the cat command spits out and executes it.

I have provided this example in this folder as well.

Just execute `./parallel.sh`