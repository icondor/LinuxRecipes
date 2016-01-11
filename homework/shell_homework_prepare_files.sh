#!/bin/bash

# Creating a text file containing the names required in the email
if [ ! -f ./names.txt ];
then
content=$'Ion\nMaria\nVasile\nAna\nVasile\nMihai\nCristina\nCristi'
echo "$content" > ./names.txt
fi

# Creating a jpg file to be returned as search result
if [ ! -f ./picture.jpg ];
then
touch ./picture.jpg
fi

# Creating an emty directory to be returned as search result
if [ ! -d empty_dir ]; then
mkdir empty_dir
fi

# Creating a text file containing the links required in the email
if [ ! -f files.txt ];
then
links=$'http:/www.hotnews.ro\nhttp://www.gandul.info\nhttp://www.fasttrackit.org'
echo "$links" > ./files.txt
fi
