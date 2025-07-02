#!/bin/bash

while true; do
  echo "=================="
  echo "     Menu"
  echo "=================="
  echo "1. Show Date"
  echo "2. Show Uptime"
  echo "3. Exit"
  echo "------------------"
  read -p "Choose an option [1-3]: " opt

  case $opt in
    1) date ;;
    2) uptime ;;
    3) echo "Goodbye!"; break ;;
    *) echo "Invalid option. Try again." ;;
  esac
done

