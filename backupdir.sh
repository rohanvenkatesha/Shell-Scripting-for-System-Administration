#!/bin/bash

#display usage
usage() {
  echo "Usage: $0 <directory_path>"
}

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
  echo "Error: Please provide a directory path as an argument."
  usage
  exit 1
fi

#assign argument no.1 to variable
directory_path="$1"

#check if provided path is directory
if [ ! -d "$directory_path" ]; then
    echo "The provided path is not a directory."
    exit 1
fi

#check if directory is empty
if [ -z "$(ls -A "$directory_path")" ]; then
  echo "Error: The directory is empty. Cannot create a backup."
  exit 1
fi

#change the path to save in specific location
backup_location="/home/rohanv10/assignmentpa4"
backup_filename="backup_$(date +'%Y%m%d').tar.gz"

#compression
tar -czvf $backup_filename $directory_path
mv $backup_filename $backup_location

echo "Backup completed successfully in: $backup_location/$backup_filename"