#!/bin/bash

#display usage
usage() {
  echo "Usage: $0 <directory_path> <prefix>"
}

#check for arguments
if [ "$#" -ne 2 ]; then
  usage
  exit 1
fi

#assign arguments to variables
directory_path=$1
prefix=$2

#check if path is directory
if [ ! -d "$directory_path" ]; then
  echo "Error: Provided path is not a directory."
  usage
  exit 1
fi

#check if directory is empty
if [ -z "$(ls -A "$directory_path")" ]; then
  echo "Error: The directory is empty."
  exit 1
fi

#rename files using prefix
for file in "$directory_path"*; do
  if [ -f "$file" ]; then
    file_name=$(basename "$file")
    new_file_name="${prefix}_${file_name}"
    mv "$file" "$directory_path/$new_file_name"
    echo "Renamed: $file_name to $new_file_name"
  fi
done

echo "Renaming "$prefix" with files are successful"