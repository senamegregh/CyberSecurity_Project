#!/bin/bash
sudo free -ht | awk -F"       " '{print $1, $4}' > ~/backups/freemem/free_mem.txt
sudo du -h > ~/backups/diskuse/disk_use.txt
sudo lsof > ~/backups/openlist/open_list.txt
sudo df -h > ~/backups/freedisk/free_disk.txt
