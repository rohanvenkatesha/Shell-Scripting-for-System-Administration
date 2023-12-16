#!/bin/bash

# Display usage
usage() {
  echo "Usage: $0 <process_name>"
}

# Check for arguments
if [ "$#" -ne 1 ]; then
  usage
  exit 1
fi

# Assign argument to variable
process_name=$1
log_file="process_log.log"

# Find the process, if running log the event
if pgrep -x "$process_name"; then
  
  memory_usage=$(ps aux | grep "$process_name" | awk '{print $6}')
  cpu_usage=$(ps aux | grep "$process_name" | grep -v grep | awk '{print $3}')

  # Log the event
  log_entry="$(date) - Process $process_name is running. Memory Usage: $memory_usage KB, CPU Usage: $cpu_usage %"
  echo "$log_entry" >> "$log_file"
  echo "Log entry saved to $log_file"
  echo "Log entry: $log_entry"

else
  # Process is not running, start it and log the event
  echo "Process $process_name is not running. Starting the process..."
  $process_name
  memory_usage=$(ps aux | grep "$process_name" | awk '{print $6}')
  cpu_usage=$(ps aux | grep "$process_name" | grep -v grep | awk '{print $3}')

  # Log the event
  log_entry="$(date) - Process $process_name started. Memory Usage: $memory_usage KB, CPU Usage: $cpu_usage %"
  echo "$log_entry" >> "$log_file"
  echo "Log entry saved to $log_file"
  echo "Log entry: $log_entry"

fi
