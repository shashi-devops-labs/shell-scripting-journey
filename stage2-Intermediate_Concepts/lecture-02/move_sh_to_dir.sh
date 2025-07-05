#!/bin/bash

target_dir=$1

if [ ! -d "$target_dir" ]; then
	echo "Error: Directory $target_dir not found!"
	exit 1
fi

mv *.sh "$target_dir"

echo "All .sh files have been moved to $target_dir/"
