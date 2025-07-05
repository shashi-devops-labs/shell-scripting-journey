#!/bin/bash

dir=${1:-/var/log}  # default to /var/log if no input
backup_name="backup_$(basename "$dir")_$(date +%F).tar.gz"

if [ ! -d "$dir" ]; then
  echo "Directory not found: $dir"
  exit 1
fi

tar -czf "$backup_name" "$dir"
echo "✅ Backup created: $backup_name"

