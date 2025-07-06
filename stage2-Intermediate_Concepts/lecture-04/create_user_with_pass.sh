#!/bin/bash

user=$1
pass=$2

if [ -z "$user" ] || [ -z "$pass" ]; then
  echo "Usage: $0 <username> <password>"
  exit 1
fi

sudo useradd "$user"
echo "$user:$pass" | sudo chpasswd
echo "✅ User $user created with password."

