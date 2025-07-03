#!/bin/bash


for file in *.sh; do
    [[ "$file" == .* ]] && continue
    echo "Visible file: $file"
done
