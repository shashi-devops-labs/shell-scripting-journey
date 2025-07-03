#!/bin/bash

check_disk() {
  usage=$(df / | grep / | awk '{print $5}' | sed 's/%//g')
  if [ $usage -gt 80 ]; then
    echo "⚠️  Disk usage is above 80%!"
  else
    echo "✅ Disk usage is normal: $usage%"
  fi
}

check_disk

