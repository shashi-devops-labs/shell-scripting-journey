#!/bin/bash



read -p "Enter a word: " word

echo "Length: ${#word}"
echo "Substring: ${word:0:3}"
echo "UpperCase: ${word^^}"
echo "LowerCase: ${word,,}"

