#!/bin/bash

dir=${1:-/var/log}

echo "Checking disk usage in: $dir"
du -sh "$dir"

