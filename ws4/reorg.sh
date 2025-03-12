#!/bin/bash

# Get the current date and time in the required format
time=$(date "+%F-%T")

# Define vendor IDs
vendors=(1.0 2.0 4.0)

# Loop through each vendor ID and create separate CSV files
for vendor in "${vendors[@]}"
do
    OUTPUT_FILE="${time}-${vendor}.csv"
    
    # Extract entries for the specific vendor and save to the corresponding file
    awk -F',' -v vendor="$vendor" '$1 == vendor' ../2019-01-h1.csv > "$OUTPUT_FILE"
    
    # Add the generated file to .gitignore
    echo "$OUTPUT_FILE" >> .gitignore

done

# Create ws4.txt and store word count results for each generated file
for vendor in "${vendors[@]}"
do
    OUTPUT_FILE="${time}-${vendor}.csv"
    wc "$OUTPUT_FILE" >> ws4.txt
done

# Append .gitignore content to ws4.txt
echo -e "\nContents of .gitignore:" >> ws4.txt
cat .gitignore >> ws4.txt
