#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Usage: <filename>"
fi
file=$1
if [ -f "$file" ]; then
	echo "$file exist!"
else
	echo "$file not exist!"
fi

