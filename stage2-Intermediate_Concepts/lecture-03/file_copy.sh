#!/bin/bash

src=$1
dest=$2

if [ ! -f "$src" ]; then
	echo "Source file doesn't exist" >&2
	exit 1
fi

cp "$src" "$dest" && echo "File copy successfully!"

