#!/bin/bash

# Function to check and install cal
install_cal_if_needed() {
  if ! command -v cal &> /dev/null; then
    echo "'cal' command not found. Attempting to install..."
    if command -v apt &> /dev/null; then
      sudo apt update
      sudo apt install -y bsdmainutils || sudo apt install -y util-linux
    else
      echo "Unsupported package manager. Please install 'cal' manually."
      return 1
    fi
  fi
  return 0
}

# Menu
echo "=================="
echo "  Simple Menu"
echo "=================="
echo "1. Show Date"
echo "2. Show Calendar"
echo "3. Show Uptime"
echo "4. Exit"
echo "------------------"

read -p "Enter your choice [1-4]: " choice

case $choice in
  1)
    date
    ;;
  2)
    if install_cal_if_needed; then
      cal
    else
      echo "Failed to install or find 'cal'."
    fi
    ;;
  3)
    uptime
    ;;
  4)
    echo "Exiting..."
    ;;
  *)
    echo "Invalid option"
    ;;
esac

