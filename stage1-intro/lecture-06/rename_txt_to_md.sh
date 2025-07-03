#!/bin/bash

for file in *.txt; do
	[ -f "$file" ] || continue;
	new_name="${file%.txt}.md"
	mv "$file" "$new_name"
	echo "$file changed to $new_name"
done
