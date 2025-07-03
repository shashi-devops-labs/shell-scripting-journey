#!/bin/bash

factorial() {
  if [ $1 -le 1 ]; then
    echo 1
  else
    prev=$(factorial $(( $1 - 1 )))
    echo $(( $1 * prev ))
  fi
}

read -p "Enter a number: " num
result=$(factorial $num)
echo "Factorial of $num is $result"

