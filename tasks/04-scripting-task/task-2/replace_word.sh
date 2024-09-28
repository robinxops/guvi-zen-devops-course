#!/bin/bash

# File name as an argument
FILE="$1"

# Check if the file exists
if [[ ! -f "$FILE" ]]; then
    echo "Error: File not found!"
    exit 1
fi

# Use sed to replace 'give' with 'learning' from line 5 to the end in lines containing 'welcome'
sed -i '5,${/welcome/s/give/learning/g}' "$FILE"

# Print a success message
echo "Replacement completed successfully in $FILE."