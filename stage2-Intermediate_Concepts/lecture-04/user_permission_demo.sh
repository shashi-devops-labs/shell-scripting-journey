#!/bin/bash

user=$1
file=$2

if [ -z "$user" ] || [ -z "$file" ]; then
  echo "Usage: $0 <username> <file>"
  exit 1
fi

sudo chown "$user":"$user" "$file"
sudo chmod 700 "$file"

echo "📁 $file ownership changed to $user with 700 permissions."

