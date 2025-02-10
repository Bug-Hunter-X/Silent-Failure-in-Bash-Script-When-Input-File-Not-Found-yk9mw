#!/bin/bash

# This script attempts to process a file, but fails to handle errors correctly.

input_file="data.txt"

# Attempt to process the file.  Note that this will silently fail if the file is not found.
output=$(cat "$input_file" | awk '{print $1}')

echo "First column: $output"