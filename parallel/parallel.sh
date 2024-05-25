#!/bin/bash

# delete all folders
rm -r */

# clear the console
clear

# list files
ls -ltr

# create folders
printf "\n................................\ncreating folders\n................................\n\n"
sed '1d' parallel.csv | cut -d ',' -f3 | parallel -j2 mkdir

# list created folders
ls -ltr
