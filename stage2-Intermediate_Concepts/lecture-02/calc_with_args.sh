#!/bin/bash

if [ $# -ne 3 ]; then
	echo "Usage: $0 <number> <operater> <number>"
	echo "Example: $0 10 + 20"
	exit 1
fi

case $2 in
	+) echo "$1 + $3 = $(( $1 + $3 ))" ;;
	-) echo "$1 - $3 = $(( $1 - $3 ))" ;;
	\*) echo "$1 * $3 = $(( $1 * $3 ))" ;;
	/) echo "$1 / $3 = $(( $1 / $3 ))" ;;
	*) echo "Invalid operator. Use + - * /" ;;
esac
