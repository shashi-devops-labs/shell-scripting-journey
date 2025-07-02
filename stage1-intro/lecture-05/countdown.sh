#!/bin/bash

count=5
while [ $count -ge 1 ]; do
  echo "Countdown: $count"
  sleep 1
  ((count--))
done

