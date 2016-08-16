#!/bin/bash

if [ $# -ne 1 ]; then 
	echo ""
	echo "USAGE: ./commit.sh <commit message>"
	echo ""
	exit
fi

git add -A
git commit -m "$1"
git push -u origin master