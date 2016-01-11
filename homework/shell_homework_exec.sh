#!/bin/bash

echo -e '\n************************************'
echo Preparing necessary files and directories
./prepare_files.sh

echo -e '\n************************************'
echo -e '\n Find command'
echo Searching for files named 'ion.txt' in the home directory
find ~ -name ion.txt

echo -e '\n************************************'
echo Searching for jpg files in the home directory
find ~ -name "*.jpg"

echo -e '\n************************************'
echo Searching for directories named 'logs' in the entire 
find / -type d -name "logs"

echo -e '\n************************************'
echo Searching for empty directories in home
find ~ -type d -empty

echo -e '\n************************************'
echo Searching for files edited in the last 24 hours
find ~ -type f -mtime -1


echo -e '\n************************************'
echo -e '\n Sort command'
echo Sorting names in alphabetical order and removing duplicates
sort ./names.txt | uniq -u > sorted_text.txt


echo -e '\n************************************'
echo -e '\n Grep command'
echo Searching for the word Mihai in the home directory and all its subdirectories
grep -R 'Mihai' ~


echo -e '\n************************************'
echo -e '\n Diff command'
echo Checking the differences between two files
diff -y names.txt sorted_text.txt


echo -e '\n************************************'
echo -e '\n Cat, xargs and wget commands'
cat ./files.txt | xargs wget
