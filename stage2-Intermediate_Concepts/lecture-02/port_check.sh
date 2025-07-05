#!/bin/bash

# Check if a port number was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <port>"
    exit 1
fi

PORT=$1

# Use ss or fallback to netstat if ss is not available
if command -v ss > /dev/null; then
    if ss -tuln | grep -q ":$PORT\b"; then
        echo "Port $PORT is in use."
    else
        echo "Port $PORT is available."
    fi
elif command -v netstat > /dev/null; then
    if netstat -tuln | grep -q ":$PORT\b"; then
        echo "Port $PORT is in use."
    else
        echo "Port $PORT is available."
    fi
else
    echo "Neither 'ss' nor 'netstat' command is available on this system."
    exit 2
fi

