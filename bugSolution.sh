#!/bin/bash

# Improved script with error handling

input_file="data.txt"

# Check if the file exists
if [ ! -f "$input_file" ]; then
  echo "Error: Input file '$input_file' not found." >&2
  exit 1
fi

# Process the file
output=$(cat "$input_file" | awk '{print $1}')

echo "First column: $output"