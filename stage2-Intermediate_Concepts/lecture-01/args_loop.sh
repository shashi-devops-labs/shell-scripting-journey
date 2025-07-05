#!/bin/bash

echo "You passed $# arguments."

for arg in "$@"; do
	  echo "Arg: $arg"
  done

