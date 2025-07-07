#!/bin/bash

TARGET_DIR="/tmp"
MAX_DAYS=3

echo "🧼 Cleaning up files in $TARGET_DIR older than $MAX_DAYS days"
find "$TARGET_DIR" -type f -mtime +$MAX_DAYS -exec rm -v {} \;

