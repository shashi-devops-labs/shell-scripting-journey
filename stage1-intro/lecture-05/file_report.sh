#!/bin/bash

# Ask user if they want to save the report
read -p "Do you want to save this report to a file? (y/n): " save_report

# Set output file if needed
if [[ "$save_report" == "y" || "$save_report" == "Y" ]]; then
  report_file="report.txt"
  echo "Generating report in $report_file ..."
  echo "Shell Script Report - $(date)" > "$report_file"
  echo "-----------------------------" >> "$report_file"
else
  report_file=""
fi

# Loop through all .sh files
for file in *.sh; do
  if [ -f "$file" ]; then
    file_info="Filename: $file
Lines: $(wc -l < "$file")
Last Modified: $(stat -c %y "$file")
"

    if [ -n "$report_file" ]; then
      echo "$file_info" >> "$report_file"
    else
      echo "$file_info"
    fi
  fi
done

# Confirmation
if [ -n "$report_file" ]; then
  echo "✅ Report saved to $report_file"
fi

	
