#!/bin/bash

# Navigate to the directory containing the files you want to rename
cd /path/to/directory

# Set the initial ID value
id=1

# Iterate over each file in the directory
for file in *; do
    # Check if the file is a regular file
    if [ -f "$file" ]; then
        # Generate the new file name
        new_filename="thenameyourwantHERE$id.csv"
        
        # Rename the file
        mv "$file" "$new_filename"
        
        # Increment the ID for the next file
        ((id++))
    fi
done
