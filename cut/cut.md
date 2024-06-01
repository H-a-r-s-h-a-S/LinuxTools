# cut

cut is a GNU coreutils command line tool that, as the name suggests is used to extract(cut) required characters from a line or a file

Here's some examples of what can be done with this tool:

- split every line of a file with a delimiter and fetch the nth column
- fetch certain bytes from each line
- fetch certain characters from each line

Let's try each of the above examples with a sample file

(1) The sample file has a serial number, employee name and then employee id

I want to fetch only the employee names and write it to a file

The file should not include the column name

`sed "1d" cut.csv | cut -d "," -f 2 > employees.txt`

If you wanted the employee id as well(selecting a range of delimited fields),

`cut -d"," -f 2-3 < cut.csv > employees.csv`

(2) Fetch certain byte(s) from each line of a file

Get the 5th byte

`cut -b 5 < cut.csv`

Get 1st to 5th byte

`cut -b 1-5 < cut.csv`

(3) Fetch certain characters from each line of a file

This is the same as `-b` but should be replaced with `-c`

This would return the same result as `-b` if all characters are 1 byte each

Few points to note while using `cut`

- while specifying a number with -b, -c or -f, say `N`, if it is specified as `N-`, the whole line will be selected from line 1
- similarly, `-N` would select characters from the start of the line till `N`
- `N-M` would mean a range

If a valid cut command is executed without an input file, it would enter an interactive mode where for each input, your cut command would be executed.

One instance, `cut -d " " -f 2`

This would return the 2nd field after the delimiter " " and if there are no delimiters in the input, output would be the same as input.


try `cut --help` for more info