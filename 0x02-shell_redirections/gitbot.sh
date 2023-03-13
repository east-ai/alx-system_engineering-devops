#!/bin/bash

# check if msg argument is passed
if [ -z "$1" ]
then
    echo "Please provide a commit message"
    exit 1
fi

# add changes to the index
git add .

# commit changes with the passed message
git commit -m "$1"

# push changes to the remote repository
git push

