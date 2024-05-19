# alias

alias is a linux command used to define a short substitute for a long command.
alias is a built-in tool and doesn't need to be installed.

It is present in most linux based systems and can be found in the bash terminal.

The syntax for alias is as below:

`alias <short form> = '<substitute command(s)>'`

alias can be added in three ways:

- adding alias in .bashrc
- adding alias in .bash_aliases file
- adding alias in the terminal (temporary alias)

You will have a default file by name `.bashrc` in home directory /home/\`whoaami\`

You can list your aliases in this file and bash will reload it whenever bash is launched.

If you would prefer just the aliases to be in a separate file, you can create a .bash_aliases file if not already present and list all your aliases there.

If it's a one time alias which you won't be using again probably, you can write them directly in the terminal.

Here a few examples for an alias:

```alias filesystem='blkid | grep -i root | grep -o "TYPE=\"\w*\""'```

```alias install='sudo apt-get install'```

```alias music='cd /home/`whoami`/Music && mpv --shuffle *'```

```alias remove='sudo apt-get autoremove'```

```alias update='sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y && sudo apt-get autoremove -y && sudo apt-get clean && sudo update-grub && echo "Update done on `date`" | mail -s "Laptop update" root'```

You can view all your aliases in the terminal using `alias -p` command.

You will need to restart the bash terminal / open a new bash terminal for a new alias to be effective.

If you want the alias to reflect in current session, you can run: `source ~/.bashrc`

