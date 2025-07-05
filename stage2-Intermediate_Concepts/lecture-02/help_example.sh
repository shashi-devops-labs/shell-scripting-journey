#!/bin/bash

if [[ "$1" == "--help" ]]; then
	echo "Usage: $0 <name>"
	 echo "Description: Greets the user by name"
	 exit 0
fi

if [ -z "$1" ]; then
	echo "Error: Name not provided"
	echo "Use --help to see usage"
exit 1
fi
 
echo "Hello, $1!"
