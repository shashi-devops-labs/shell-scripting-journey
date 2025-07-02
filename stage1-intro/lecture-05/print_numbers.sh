#!/bin/bash

echo "Example 1: Brace Expansion"
for i in {1..5}; do
  echo "  Number: $i"
done

echo ""
echo "Example 2: C-style For Loop"
for ((i=1; i<=5; i++)); do
  echo "  Number: $i"
done

echo ""
echo "Example 3: List of Items"
for i in 1 2 3 4 5; do
  echo "  Number: $i"
done

echo ""
echo "Example 4: Loop Over Command Output (Listing .sh files)"
for file in $(ls *.sh 2>/dev/null); do
  echo "  Found script: $file"
done

echo ""
echo "Example 5: Loop Over Array"
arr=(10 20 30 40 50)
for i in "${arr[@]}"; do
  echo "  Array value: $i"
done

echo ""
echo "Example 6: Read From File (numbers.txt)"
# Creating file for demo
echo -e "100\n200\n300" > numbers.txt

while read line; do
  echo "  Line: $line"
done < numbers.txt

# Clean up
rm numbers.txt

