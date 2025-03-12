#!/bin/bash

# Check if at least one argument (directory) is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <directory> [file_extension]"
    exit 1
fi

INPUT_DIR="$1"
EXTENSION="${2:-txt}"  # Default to 'txt' if no extension is provided
OUTPUT_DIR="Assignments"
mkdir -p "$OUTPUT_DIR"  # Create the Assignments directory if it doesn’t exist

# Counter for the number of files moved
moved_count=0

# Loop through all files with the given extension in the specified directory
for file in "$INPUT_DIR"/*."$EXTENSION"; do
    [ -e "$file" ] || continue  # Skip if no matching files exist

    DATE=$(grep -oE "[0-9]{2}-[0-9]{2}-[0-9]{4}" "$file" | head -n 1)

    if [[ -z "$DATE" ]]; then
        echo "No valid date found in: $file"
        continue
    fi

    mkdir -p "$OUTPUT_DIR/$DATE"  # Create date folder if it doesn’t exist
    mv "$file" "$OUTPUT_DIR/$DATE/"
    echo "Moved $file to $OUTPUT_DIR/$DATE/"
    moved_count=$((moved_count + 1))
done

if [ "$moved_count" -gt 0 ]; then
    echo "$moved_count files moved. Done"
else
    echo "No files were moved"
fi
