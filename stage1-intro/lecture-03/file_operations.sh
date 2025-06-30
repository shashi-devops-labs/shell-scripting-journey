#!/bin/bash

read -p "Enter a filename: " file

if [ -e "$file" ]; then
  echo "$file exists."
else
  echo "$file does not exist."
fi

if [ -f "$file" ]; then
  echo "$file is a regular file."
fi

if [ -d "$file" ]; then
  echo "$file is a directory."
fi

if [ -s "$file" ]; then
  echo "$file is not empty."
else
  echo "$file is empty or does not exist."
fi

