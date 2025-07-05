#!/bin/bash

sum=0

for num in "$@"; do
	sum=$((sum + num))
done

echo "You enter '$#' numbers and these sum is: $sum."
