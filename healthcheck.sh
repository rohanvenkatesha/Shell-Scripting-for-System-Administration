#!/bin/bash

#get current date and time
current_date_time=$(date '+%Y-%m-%d %H:%M:%S')

#get system uptime
uptime=$(uptime -p)

#count no. of logged in users
logged_in_users=$(who | wc -l)

#check system memory usage (used and free)
memory_usage=$(free -h | awk 'NR==2{printf "Used: %s | Free: %s\n", $3, $4}')

#check disk usage
disk_usage=$(df -h / | awk 'NR==2{printf "Used: %s | Free: %s\n", $3, $4}')

#print all values
echo "1. Current date and time: $current_date_time"
echo "2. System Uptime: $uptime"
echo "3. Total number of users currently logged in: $logged_in_users"
echo "4. Memory Usage: $memory_usage"
echo "5. Disk Usage: $disk_usage"
