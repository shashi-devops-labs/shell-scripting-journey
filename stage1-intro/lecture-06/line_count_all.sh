#!/bin/bash


for file in *.sh; do
 if [ -f "$file" ]; then
   echo "$file has $(wc -l < "$file") lines"
 fi
done

