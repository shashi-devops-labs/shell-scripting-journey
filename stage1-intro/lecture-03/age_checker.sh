#!/bin/bash

read -p "Enter your age: " age

if [ $age -lt 18 ]; then
  echo "You're a minor."
elif [ $age -ge 18 ] && [ $age -lt 60 ]; then
  echo "You're an adult."
else
  echo "You're a senior citizen."
fi

