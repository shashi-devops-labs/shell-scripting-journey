#!/bin/bash


if [ $# -lt 1 ]; then
	echo "Usage: $0 <username>"
	exit 1
fi
username="$1"
sudo useradd "$username" && echo "User '$username' created!"
