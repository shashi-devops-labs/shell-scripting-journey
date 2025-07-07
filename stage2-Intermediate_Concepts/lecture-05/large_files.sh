#!/bin/bash

echo "🔍 Finding files > 10MB in current directory..."
find . -type f -size +10M -exec ls -lh {} \;

