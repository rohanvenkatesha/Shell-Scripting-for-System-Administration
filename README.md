# Shell-Scripting-for-System-Administration

Specification:
Tasks:
1. User Information Script
Write a script userinfo.sh that accepts a username as an argument and displays the following information about 
the user:
• User’s full name
• Home directory
• Shell type
If the user does not exist, the script should display an appropriate message.
2. System Health Check Script
Create a script healthcheck.sh that reports the following system information:
• Current date and time
• System uptime
• Total number of users currently logged in
• Memory usage (free/used memory)
• Disk usage
The script should format the output in a readable and organized manner.
3. Directory Backup Script
Write a script backupdir.sh that takes a directory path as input and creates a compressed backup of the entire 
directory in a specified backup location.
• The backup file name should include the current date.
• If the input is not a directory, the script should display an error message.
4. Batch File Rename
Develop a script rename.sh that renames all files in a given directory by adding a prefix provided as an argument.
The script should handle cases where no prefix is provided and display usage in 
such cases.
5. Process Monitor
Script processmonitor.sh should monitor a specific process (process name given as an argument).
• If the process is not running, the script should start the process and log this event.
• If the process is running, the script should log its current memory and CPU usage.
