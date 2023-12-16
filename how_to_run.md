How to run:

--------------------------------------------------------------------------------------

1. User Information Script - userinfo.sh

Usage:
$ ./userinfo.sh <username>

Example:
$ ./userinfo.sh rohanv10

Expected Output:
User's Full Name: Rohan Venkatesha
Home Directory: /home/rohanv10
Shell Type: /bin/bash

--------------------------------------------------------------------------------------

2. System Health Check Script - healthcheck.sh

Usage:
$ ./healthcheck.sh

Expected Output:
1. Current date and time: 2023-11-17 23:10:44
2. System Uptime: up 3 hours, 39 minutes
3. Total number of users currently logged in: 1
4. Memory Usage: Used: 497Mi | Free: 2.6Gi
5. Disk Usage: Used: 1.7G | Free: 955G

--------------------------------------------------------------------------------------

3. Directory Backup Script - backupdir.sh

Usage:
$ ./backupdir.sh <directory_path>

Example:
$ ./backupdir.sh test/

Expected Output:
test/
test/userinfo.sh
test/healthcheck.sh
Backup completed successfully in: /home/rohanv10/assignmentpa4/backup_20231117.tar.gz

--------------------------------------------------------------------------------------

4. Batch File Rename - rename.sh

Usage:
$ ./rename.sh <directory_path> <prefix>


Example:
$ ls test/
backupdir.sh  healthcheck.sh  processmonitor.sh  userinfo.sh

$ ./rename.sh test/ pa4

Expected Output:
Renamed: backupdir.sh to pa4_backupdir.sh
Renamed: healthcheck.sh to pa4_healthcheck.sh
Renamed: processmonitor.sh to pa4_processmonitor.sh
Renamed: userinfo.sh to pa4_userinfo.sh
Renaming pa4 with files are successful

$ ls test/
pa4_backupdir.sh  pa4_healthcheck.sh  pa4_processmonitor.sh  pa4_userinfo.sh

--------------------------------------------------------------------------------------

5. Process Monitor - processmonitor.sh

Usage:
$ ./processmonitor.sh <process_name>

Example:
$ ./processmonitor.sh python3

Expected Output:
418
Log entry saved to process_log.log
Log entry: Tue Nov 21 14:43:51 EST 2023 - Process python3 is running. Memory Usage: 19692
21672
71140
37488
3532
1676
2052 KB, CPU Usage: 0.0
0.0
1.0
0.6
0.0
0.0 %

Example:
$  ./processmonitor.sh ./healthcheck.sh

Expected Output:
Process ./healthcheck.sh is not running. Starting the process...
1. Current date and time: 2023-11-21 14:43:37
2. System Uptime: up 4 minutes
3. Total number of users currently logged in: 1
4. Memory Usage: Used: 482Mi | Free: 2.9Gi
5. Disk Usage: Used: 1.8G | Free: 954G
Log entry saved to process_log.log
Log entry: Tue Nov 21 14:43:37 EST 2023 - Process ./healthcheck.sh started. Memory Usage: 3496
1764
2176 KB, CPU Usage: 0.0
0.0 %


--------------------------------------------------------------------------------------