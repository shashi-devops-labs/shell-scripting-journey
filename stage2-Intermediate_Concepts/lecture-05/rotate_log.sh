#!/bin/bash

log_file="/var/log/syslog"
backup="/tmp/syslog_$(date +%F_%H-%M-%S).log.gz"

echo "🔄 Rotating log: $log_file"
sudo cp "$log_file" "$backup" && sudo truncate -s 0 "$log_file"
gzip "$backup"
echo "✅ Log rotated and compressed: $backup.gz"

