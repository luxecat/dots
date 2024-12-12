#!/bin/bash

cp ./_settings.jsonc settings.json

find_string="\$\$PATH_TO_STYLES\$\$"
replace_string=$(realpath style.css)
file="./settings.json"

# Create a temporary file to store the result
temp_file=$(mktemp)

# Loop through the file line-by-line
while IFS= read -r line; do
    # Replace all occurrences of the find_string with the replace_string
    modified_line="${line//$find_string/$replace_string}"
    echo "$modified_line" >> "$temp_file"
done < "$file"

# Replace the original file with the modified content
mv "$temp_file" "$file"

echo "Successfully replaced '$find_string' with '$replace_string' in '$file'."
