#!/bin/bash

# ----------- Setup ----------
target_dir="$1"
timestamp=$(date +%F_%H-%M-%S)
backup_name="backup_${timestamp}.tar.gz"
log_file="backup.log"
error_file="error.log"

# ----------- Validation ----------
if [ -z "$target_dir" ]; then
  echo "❌ Usage: $0 <directory_to_backup>" >&2
  exit 1
fi

if [ ! -d "$target_dir" ]; then
  echo "❌ Directory not found: $target_dir" >&2
  echo "$(date '+%F %T') ❌ Backup failed: Directory $target_dir not found" >> "$log_file"
  exit 2
fi

# ----------- Backup Process ----------
tar -czf "$backup_name" "$target_dir" 2>> "$error_file"

if [ $? -eq 0 ]; then
  echo "$(date '+%F %T') ✅ Backup successful: $backup_name" >> "$log_file"
else
  echo "$(date '+%F %T') ❌ Backup failed for $target_dir" >> "$log_file"
fi

