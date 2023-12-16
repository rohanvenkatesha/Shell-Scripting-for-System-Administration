#!/bin/bash

#check argument and display usage
if [ $# -eq 0 ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

#assign argument to variable
username=$1

#get user details logged in the system
user=$(getent passwd "$username")

#check if user exists
if [ -z "$user" ]; then
    echo "User '$username' does not exist."
    exit 1
fi

#fetch necessary details
full_name=$(echo "$user" | cut -d ':' -f 5)
home_directory=$(echo "$user" | cut -d ':' -f 6)
shell_type=$(echo "$user" | cut -d ':' -f 7)

#print the details
echo "User's Full Name: $full_name"
echo "Home Directory: $home_directory"
echo "Shell Type: $shell_type"