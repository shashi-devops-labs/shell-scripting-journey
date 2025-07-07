#!/bin/bash

log_dir=${1:-/var/log}
days_old=${2:-7}

echo "🧹 Deleting log files older than $days_old days in $log_dir"
find "$log_dir" -type f -name "*.log" -mtime +$days_old -exec rm -v {} \;

