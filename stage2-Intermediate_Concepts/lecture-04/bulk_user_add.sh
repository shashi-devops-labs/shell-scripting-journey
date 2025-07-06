#!/bin/bash

file="users.txt"

if [ ! -f "$file" ]; then
  echo "❌ File $file not found."
  exit 1
fi

while read user; do
  sudo useradd "$user"
  echo "$user:Password@123" | sudo chpasswd
  echo "Added $user"
done < "$file"

