#!/bin/sh

for file in *; do
    if [ -d "$file" ]; then
        echo "Generating $file symlinks via stow..."
        stow "$file"
    fi
done