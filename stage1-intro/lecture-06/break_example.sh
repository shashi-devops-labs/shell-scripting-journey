#!/bin/bash

for file in *.sh; do
  if [[ "$file" == *main* ]]; then
    echo "Found file: $file"
    break
  fi
done

