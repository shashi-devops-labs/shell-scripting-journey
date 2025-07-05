#!/bin/bash

echo "Running a command..."
ls /fake/path
status=$?

if [ $status -ne 0 ]; then
  echo "⚠️ Command failed with exit code $status"
else
  echo "✅ Command successful"
fi

