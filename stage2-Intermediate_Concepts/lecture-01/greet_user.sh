#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: $0 <username>"
  exit 1
fi

echo "Hello, $1! Welcome to DevOps scripting."

