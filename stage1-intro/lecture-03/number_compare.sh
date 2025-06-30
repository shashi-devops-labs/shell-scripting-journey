#!/bin/bash

read -p "Enter two numbers (space-separated): " a b

if [ $a -ne $b ]; then
  echo "$a is NOT equal to $b"
else
  echo "$a is equal to $b"
fi

