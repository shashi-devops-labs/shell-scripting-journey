#!/bin/bash

echo "Deleting all .tmp files...."
find . -type f -name "*.tmp" -exec rm -v {} \;

