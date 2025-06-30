#!/bin/bash

read -p "Enter first string: " str1
read -p "Enter second string: " str2

# Equality check
if [ "$str1" = "$str2" ]; then
  echo "Both strings are equal."
else
  echo "Strings are not equal."
fi

# Non-empty check
if [ -n "$str1" ]; then
  echo "First string is not empty."
fi

# Empty check
if [ -z "$str2" ]; then
  echo "Second string is empty."
fi

